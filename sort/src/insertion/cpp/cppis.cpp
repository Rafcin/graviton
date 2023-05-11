#include "cppis.h"

using namespace std;
void cppis(int a[], int length)
{
    int i, j, key;

    for (i = 1; i < length; i++)
    {
        key = a[i];
        j = i - 1;
        while (j >= 0 && a[j] > key)
        {
            a[j + 1] = a[j];
            j--;
        }
        a[j + 1] = key;
    }
}