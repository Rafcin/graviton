# split_asm.py
import sys
import re
import os
import openai
import tiktoken
from Bard import Chatbot
from typing import List


def num_tokens_from_string(string: str, encoding_name: str) -> int:
    """Returns the number of tokens in a text string."""
    encoding = tiktoken.get_encoding(encoding_name)
    num_tokens = len(encoding.encode(string))
    return num_tokens


# def get_readable_name(mangled_name: str, source_code: str) -> str:
#     prompt = f"Provide a human-readable name for this ARM64 Assembly mangled label: {mangled_name}. The source code snippet for context is: '{source_code}'. Respond only with the name of the new label. Do not say things like 'The label is...' or 'The human-readable name for mangled code is...'"
#     tokens = num_tokens_from_string(prompt, "cl100k_base")

#     if tokens >= 4096:
#         raise ValueError("The prompt is too long to fit within GPT-3.5's token limit.")

#     print(
#         f"Sending prompt '{prompt}' to OpenAI API for mangled name '{mangled_name}'..."
#     )
#     # The human-readable name for the C++ mangled name _ZdlPvS_ is "operator delete(void*, void*)".
#     response = openai.ChatCompletion.create(
#         model="gpt-3.5-turbo",
#         messages=[
#             {
#                 "role": "system",
#                 "content": "You are MangledGPT, a large language model that takes in a mangled string and returns a fixed string. You only respond with the string. Nothing more.",
#             },
#             {
#                 "role": "user",
#                 "content": prompt,
#             },
#         ],
#         stream=False,
#     )
#     print(
#         f"Received response '{response.choices[0].message.content.strip()}' from OpenAI API for mangled name '{mangled_name}'"
#     )

#     readable_name = response.choices[0].message.content.strip()
#     return readable_name


def get_readable_name(
    mangled_name: str, cplusplus_code: str, file_lines: List[str]
) -> str:
    assembly_code = "\n".join(file_lines)
    source_code = f"{assembly_code}\n\n{cplusplus_code}"
    source_code = source_code[
        :4100
    ]  # Truncate the source_code to fit within the character limit

    prompt = f"Can you make the label: {mangled_name} more human-readable given the code: ```{source_code}```. Please return only the label in plain text english with no special characters, and nothing more. Do not make any conversation or ask if I have more questions. Return the label wrapped in the string >> <<. For example: >>label_name<<. You must return the response like this."

    response = chatbot.ask(prompt)
    response_content = response["content"]
    print(response_content)

    label_match = re.search(r">>(.*?)<<", response_content)
    if label_match:
        print(label_match.group(1))
        return label_match.group(1)
    else:
        print("Label not found")
        return mangled_name


def create_makefile(folder):
    makefile_content = """# Get the name of the .s file in the current directory
SRC = $(wildcard *.s)

# Extract the filename without extension
NAME = $(basename $(SRC))

# Define the object file
OBJ = $(SRC:.s=.o)

# Define the flags for debugging
DEBUG_FLAGS = -g -gdwarf-2

# Define the compile command
CC = as $(DEBUG_FLAGS)

all: $(OBJ)

$(OBJ): $(SRC)
	$(CC) -o $@ $<

clean:
	rm -f $(OBJ)
"""
    with open(os.path.join(folder, "Makefile"), "w") as f:
        f.write(makefile_content)


def find_function_name(source_file, mangled_name):
    with open(source_file, "r") as f:
        content = f.read()
    matches = re.findall(r"// ASM_LABEL: (\w+)\s*(.*)\s*" + mangled_name, content)
    for match in matches:
        label, func_definition = match
        if mangled_name in func_definition:
            return label
    return None


def find_code_snippet(source_code, mangled_name):
    patterns = [
        r"(\w+)(\s*)\((.*?)\)(\s*)\{",  # Function definitions
        r"struct(\s+)(\w+)(\s*)\{",  # Struct definitions
        r"class(\s+)(\w+)(\s*)\{",  # Class definitions
    ]

    for pattern in patterns:
        matches = re.findall(pattern, source_code)
        for match in matches:
            code_snippet = "".join(match)
            if mangled_name in code_snippet:
                return code_snippet
    return ""


def get_source_code(source_filename, mangled_name):
    with open(source_filename, "r") as f:
        content = f.read()

    # First, try to find code blocks with labels
    matches = re.findall(r"// ASM_LABEL: (\w+)\s*(" + mangled_name + r")\s*", content)

    for match in matches:
        label, code_block = match
        if mangled_name in code_block:
            return code_block

    # If not found, try to find other code snippets
    code_snippet = find_code_snippet(content, mangled_name)
    if code_snippet:
        return code_snippet

    return ""


def update_mangled_names_in_file(file_path, mangled_names_mapping):
    with open(file_path, "r") as f:
        content = f.read()

    for old_name, new_name in mangled_names_mapping.items():
        content = content.replace(old_name, new_name)

    with open(file_path, "w") as f:
        f.write(content)


def split_asm(asm_filename, source_filename):
    with open(asm_filename, "r") as f:
        content = f.read()

    routines = re.split(r"(\n\t.type\t[a-zA-Z0-9_]*, %function)", content)

    mangled_names_mapping = {}

    for i in range(1, len(routines), 2):
        routine_name = re.search(r"\t.type\t([a-zA-Z0-9_]*)", routines[i]).group(1)
        readable_routine_name = find_function_name(source_filename, routine_name)
        if readable_routine_name is None:
            source_code = get_source_code(source_filename, routine_name)

            # Get the first 30 lines of the .s file
            asm_lines = routines[i] + routines[i + 1]
            asm_lines = asm_lines.splitlines()[:30]

            readable_routine_name = get_readable_name(
                routine_name, source_code, asm_lines
            )  # Use the new get_readable_name function
        folder_name = f"subroutines/{readable_routine_name}"
        os.makedirs(folder_name, exist_ok=True)
        new_file_path = os.path.join(folder_name, f"{readable_routine_name}.s")
        with open(new_file_path, "w") as f:
            f.write(routines[i] + routines[i + 1])
        create_makefile(folder_name)
        mangled_names_mapping[routine_name] = readable_routine_name

    # Update mangled names inside all the .s files
    for root, _, files in os.walk("subroutines"):
        for file in files:
            if file.endswith(".s"):
                file_path = os.path.join(root, file)
                update_mangled_names_in_file(file_path, mangled_names_mapping)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python split_asm.py <asm_filename> <source_filename>")
    else:
        split_asm(sys.argv[1], sys.argv[2])
