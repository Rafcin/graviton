#include "cppis.h"
#include <algorithm>

void cppis(int a[], int length)
{
    for (int i = 1; i < length; ++i)
    {
        int key = a[i];

        // The comparison function is now std::less<int>(), which is the default, so we can omit it.
        int *pos = std::upper_bound(a, a + i, key);

        if (pos != a + i)
        {
            std::rotate(pos, a + i, a + i + 1);
            *pos = key;
        }
    }
}
