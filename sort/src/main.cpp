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
#include <iomanip>   // For std::setw
#include <numeric>   // for std::iota
#include <algorithm> // for std::is_sorted
#include <cmath>     // for std::sqrt

#include "bubble/cpp/cppbs.h"
#include "insertion/cpp/cppis.h"

extern "C" void asmbs(int *arr, int length);
extern "C" void asmis(int *arr, int length);

using namespace std;
using namespace std::chrono;

double calculate_mean(const vector<int> &numbers)
{
    return accumulate(numbers.begin(), numbers.end(), 0.0) / numbers.size();
}

double calculate_std_dev(const vector<int> &numbers, double mean)
{
    double variance = accumulate(numbers.begin(), numbers.end(), 0.0,
                                 [mean](double a, int b)
                                 { return a + pow(b - mean, 2); }) /
                      numbers.size();
    return sqrt(variance);
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

vector<int> load_numbers(const string &input)
{
    ifstream file(input);
    if (file.good())
    {
        vector<int> numbers = read_file(input);
        file.close();
        return numbers;
    }
    else
    {
        cerr << "File not found." << endl;
        return {};
    }
}

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

string write_sorted_file(const string &input, const vector<int> &numbers)
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

    return output_file; // return the filename of the sorted file
}
void sort_and_measure(void (*sort_function)(int *, int), const string &sort_method, vector<int> &numbers, const string &input)
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

    cout << "Sort Method: " << sort_method << "\n";
    string output_filename = write_sorted_file(input, numbers);
    cout << setw(25) << "Output File: " << setw(10) << output_filename << "\n";

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
    cout << setw(25) << "Voluntary ctxt: " << setw(10) << voluntary_ctxt_switches << "\n";

    long involuntary_ctxt_switches = usage2.ru_nivcsw - usage.ru_nivcsw;
    cout << setw(25) << "Involuntary ctxt: " << setw(10) << involuntary_ctxt_switches << "\n";

    long major_page_faults = usage2.ru_majflt - usage.ru_majflt;
    cout << setw(25) << "Major page faults: " << setw(10) << major_page_faults << "\n";

    long minor_page_faults = usage2.ru_minflt - usage.ru_minflt;
    cout << setw(25) << "Minor page faults: " << setw(10) << minor_page_faults << "\n";

    long max_rss = usage2.ru_maxrss;
    cout << setw(25) << "Max resident set size: " << setw(10) << max_rss << " KB\n";

    // Calculate mean and standard deviation before sorting
    double mean_before = calculate_mean(numbers);
    double std_dev_before = calculate_std_dev(numbers, mean_before);

    // Check if the array is sorted before sorting
    bool is_sorted_before = is_sorted(numbers.begin(), numbers.end());

    // Perform the sorting operation
    sort_function(arr, length);

    // Calculate mean and standard deviation after sorting
    double mean_after = calculate_mean(numbers);
    double std_dev_after = calculate_std_dev(numbers, mean_after);

    // Check if the array is sorted after sorting
    bool is_sorted_after = is_sorted(numbers.begin(), numbers.end());

    // Print the data distribution and sortedness statistics
    cout << setw(25) << "Mean before sorting: " << setw(10) << mean_before << "\n";
    cout << setw(25) << "Std Dev before sorting: " << setw(10) << std_dev_before << "\n";
    cout << setw(25) << "Is sorted before sorting: " << setw(10) << (is_sorted_before ? "Yes" : "No") << "\n";
    cout << setw(25) << "Mean after sorting: " << setw(10) << mean_after << "\n";
    cout << setw(25) << "Std Dev after sorting: " << setw(10) << std_dev_after << "\n";
    cout << setw(25) << "Is sorted after sorting: " << setw(10) << (is_sorted_after ? "Yes" : "No") << "\n";

    cout << "\n";
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
             << "3. ASM Insertion sort\n"
             << "4. ASM Bubble sort\n"
             << "5. Load a different file\n"
             << "6. Quit\n";
        cout << "------------------------------ \n";
        int option;
        cin >> option;

        switch (option)
        {
        case 1:
            numbers = load_numbers(input);
            sort_and_measure(cppbs, "C++ Bubble Sort", numbers, input);
            break;
        case 2:
            numbers = load_numbers(input);
            sort_and_measure(cppis, "C++ Insertion Sort", numbers, input);
            break;
        case 3:
            numbers = load_numbers(input);
            sort_and_measure(asmis, "ASM Bubble Sort", numbers, input);
            break;
        case 4:
            numbers = load_numbers(input);
            sort_and_measure(asmbs, "ASM Insertion Sort", numbers, input);
            break;
        case 5:
            cout << "Enter the name of the file to load: ";
            cin >> input;
            numbers = read_file(input);
            break;
        case 6:
            return 0;
        default:
            cout << "Invalid option\n";
        }
    }
}