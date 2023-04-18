import sys
import re
import os
import openai
import tiktoken
from Bard import Chatbot


def num_tokens_from_string(string: str, encoding_name: str) -> int:
    """Returns the number of tokens in a text string."""
    encoding = tiktoken.get_encoding(encoding_name)
    num_tokens = len(encoding.encode(string))
    return num_tokens


# def get_readable_name(mangled_name: str) -> str:
#     prompt = f"Provide a human-readable name for this C++ mangled name: {mangled_name}. Only return a single name, do not say anthing else or make conversation."
#     tokens = num_tokens_from_string(prompt, "cl100k_base")

#     if tokens >= 4096:
#         raise ValueError("The prompt is too long to fit within GPT-3.5's token limit.")


#     print(
#         f"Sending prompt '{prompt}' to OpenAI API for mangled name '{mangled_name}'..."
#     )
#     response = openai.ChatCompletion.create(
#         model="gpt-3.5-turbo",
#         messages=[
#             {
#                 "role": "system",
#                 "content": "You are AssemblerGPT, a large language model that can help with C++ and Assembly programs.",
#             },
#             {
#                 "role": "user",
#                 "content": prompt,
#             },
#         ],
#         stream=False,
#     )
#     print(response)
def get_readable_name(mangled_name: str, source_code: str) -> str:
    prompt = f"Can you make the label: {mangled_name} more human-readable given the code: ```{source_code}```. Please return only the label and nothing more. Do not make any conversation or ask if I have more questions. Please wrap the label in %, for example %label_name%"

    response = chatbot.ask(prompt)

    response_content = response["content"]
    print(response_content)
    label_match = re.search(r"%(.*?)%", response_content)
    if label_match:
        print(label_match.group(1))
    else:
        print("Label not found")


if __name__ == "__main__":
    get_readable_name(
        "_Z12list_advanceP4Nodei",
        "// ASM_LABEL_START: list_advance\
Node *list_advance(Node *node, int n)\
{\
    while (n-- > 0 && node)\
    {\
        node = node->next;\
    }\
    return node;\
}\
// ASM_LABEL_END: list_advance",
    )
