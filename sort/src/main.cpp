#include <iostream>
#include <fstream>
#include <vector>
#include <chrono>
#include <random>
#include <limits.h>
#include <sstream>
#include <iomanip>
#include <ctime>
#include <sys/stat.h> // For mkdir
#include <unistd.h>   // For access
#include <thread>
#include <sys/resource.h>
#include <iomanip> // For std::setw

#include "bubble/cpp/cppbs.h"
#include "insertion/cpp/cppis.h"

extern "C" void asmbs(int *arr, int length);
extern "C" void asmis(int *arr, int length);
extern "C" void asmis_exp(int *arr, int length);

using namespace std;
using namespace std::chrono;

void generate_file(const string &filename)
{
    ofstream file(filename);
    random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> distr(INT_MIN, INT_MAX);

    for (int i = 0; i < 200000; ++i)
    {
        file << distr(gen) << '\n';
    }

    file.close();
}

vector<int> read_file(const string &filename)
{
    ifstream file(filename);
    vector<int> numbers;
    int number;

    while (file >> number)
    {
        numbers.push_back(number);
    }

    file.close();
    return numbers;
}

void sort_and_measure(void (*sort_function)(int *, int), vector<int> &numbers)
{
    int *arr = numbers.data();
    int length = numbers.size();

    struct rusage usage;
    struct rusage usage2;

    getrusage(RUSAGE_SELF, &usage);

    auto start = high_resolution_clock::now();
    cout << "Sorting started...\n";
    sort_function(arr, length);
    auto stop = high_resolution_clock::now();
    cout << "Sorting completed!\n";

    getrusage(RUSAGE_SELF, &usage2);

    auto duration = duration_cast<microseconds>(stop - start);
    double duration_sec = duration.count() / 1e6; // convert microseconds to seconds

    cout << setw(25) << "Time taken: " << setw(10) << duration.count() << " microseconds (" << duration_sec << " seconds)\n";

    auto cpu_time_used = (usage2.ru_utime.tv_sec - usage.ru_utime.tv_sec) * 1e6 + (usage2.ru_utime.tv_usec - usage.ru_utime.tv_usec);
    cout << setw(25) << "Total CPU time used: " << setw(10) << cpu_time_used << " microseconds\n";

    auto user_cpu_time_used = (usage2.ru_utime.tv_sec - usage.ru_utime.tv_sec) * 1e6 + (usage2.ru_utime.tv_usec - usage.ru_utime.tv_usec);
    cout << setw(25) << "User CPU time used: " << setw(10) << user_cpu_time_used << " microseconds\n";

    auto system_cpu_time_used = (usage2.ru_stime.tv_sec - usage.ru_stime.tv_sec) * 1e6 + (usage2.ru_stime.tv_usec - usage.ru_stime.tv_usec);
    cout << setw(25) << "System CPU time used: " << setw(10) << system_cpu_time_used << " microseconds\n";

    long rss = usage2.ru_maxrss - usage.ru_maxrss;
    cout << setw(25) << "Memory used: " << setw(10) << rss << " KB\n";

    long voluntary_ctxt_switches = usage2.ru_nvcsw - usage.ru_nvcsw;
    cout << setw(25) << "Voluntary ctxt switches: " << setw(10) << voluntary_ctxt_switches << "\n";

    long involuntary_ctxt_switches = usage2.ru_nivcsw - usage.ru_nivcsw;
    cout << setw(25) << "Involuntary ctxt switches: " << setw(10) << involuntary_ctxt_switches << "\n";

    long major_page_faults = usage2.ru_majflt - usage.ru_majflt;
    cout << setw(25) << "Major page faults: " << setw(10) << major_page_faults << "\n";

    long minor_page_faults = usage2.ru_minflt - usage.ru_minflt;
    cout << setw(25) << "Minor page faults: " << setw(10) << minor_page_faults << "\n";

    long max_rss = usage2.ru_maxrss;
    cout << setw(25) << "Max resident set size: " << setw(10) << max_rss << " KB\n";

    cout << "\n";
}

void write_to_file(const string &filename, const vector<int> &numbers)
{
    ofstream file(filename);
    for (const int &num : numbers)
    {
        file << num << '\n';
    }
    file.close();
}

void create_directory_if_not_exists(const string &dir)
{
    struct stat info;

    if (stat(dir.c_str(), &info) != 0)
    {
        // Directory does not exist, create it
        if (mkdir(dir.c_str(), S_IRWXU) != 0)
        {
            cerr << "Failed to create directory: " << dir << endl;
            return;
        }
        cout << "Directory created: " << dir << endl;
    }
    else if (info.st_mode & S_IFDIR)
    {
        // Directory already exists
        cout << "Directory already exists: " << dir << endl;
    }
    else
    {
        // Path exists, but it's not a directory
        cerr << "Path exists, but it's not a directory: " << dir << endl;
        return;
    }
}

void write_sorted_file(const string &input, const vector<int> &numbers)
{
    // Get the current time and format it as a string
    auto now = chrono::system_clock::now();
    auto time_t = chrono::system_clock::to_time_t(now);
    stringstream ss;
    ss << put_time(localtime(&time_t), "%Y%m%d%H%M%S");
    string timestamp = ss.str();

    // Determine the output directory and filename
    size_t pos = input.find_last_of("/\\");
    string filename = (string::npos == pos) ? input : input.substr(pos + 1);
    string output_dir = (string::npos == pos) ? "" : input.substr(0, pos + 1);
    string output_folder = output_dir + "output/";

    // Create the output directory if it doesn't exist
    create_directory_if_not_exists(output_folder);

    // Write the numbers to the output file
    string output_file = output_folder + filename + "_" + timestamp + ".txt";
    write_to_file(output_file, numbers);
}

int main()
{
    cout << "Enter file name, or 'generate' to generate a new file: ";
    string input;
    cin >> input;

    vector<int> numbers;

    if (input == "generate")
    {
        generate_file("numbers.txt");
        input = "numbers.txt";
        numbers = read_file(input);
    }
    else
    {
        ifstream file(input);
        if (file.good())
        {
            numbers = read_file(input);
            file.close();
        }
        else
        {
            cout << "File not found.\n";
            return 1;
        }
    }

    while (true)
    {
        cout << "------------------------------ \n";
        cout << "Choose option: \n"
             << "1. C++ Bubble sort\n"
             << "2. C++ Insertion sort\n"
             << "3. ASM Bubble sort\n"
             << "4. ASM Insertion sort\n"
             << "5. Load a different file\n"
             << "[Experimental Sorting] \n"
             << "6. ASM Insertion sort"
             << "7. Quit\n";
        cout << "------------------------------ \n";
        int option;
        cin >> option;

        switch (option)
        {
        case 1:
            sort_and_measure(cppbs, numbers);
            write_sorted_file(input, numbers);
            break;
        case 2:
            sort_and_measure(cppis, numbers);
            write_sorted_file(input, numbers);
            break;
        case 3:
            sort_and_measure(asmbs, numbers);
            write_sorted_file(input, numbers);
            break;
        case 4:
            sort_and_measure(asmis, numbers);
            write_sorted_file(input, numbers);
            break;
        case 5:
            cout << "Enter the name of the file to load: ";
            cin >> input;
            numbers = read_file(input);
            break;
        case 6:
            sort_and_measure(asmis_exp, numbers);
            write_sorted_file(input, numbers);
            break;
        case 7:
            return 0;
        default:
            cout << "Invalid option\n";
        }
    }
}