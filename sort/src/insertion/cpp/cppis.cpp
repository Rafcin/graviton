#include "cppis.h"
#include <algorithm>

// Function to perform the optimized insertion sort on an array of integers
void cppis(int a[], int length)
{
    // Iterate over the array starting from the second element (1-based)
    for (int i = 1; i < length; ++i)
    {
        // Store the current value (key) to be compared and placed in the correct position
        int key = a[i];

        // Find the first position in the sorted portion of the array (from 0 to i-1)
        // where the key is smaller than or equal to the current element
        // Use the std::upper_bound() function with a custom comparison (std::greater<int>())
        // to find the position more efficiently than manually iterating and comparing
        int *pos = std::upper_bound(a, a + i, key, std::greater<int>());

        // Check if the found position is different from the current position (i)
        if (pos != a + i)
        {
            // If the position is different, it means the key should be placed in this new position
            // 'pos' points to the first element greater than the key
            // Shift elements from 'pos' to 'i' (inclusive) one place to the right using std::rotate()
            std::rotate(pos, a + i, a + i + 1);

            // Place the key in the correct position (shifted by the std::rotate() operation)
            *pos = key;
        }

        // If the position found is the same as the current position (i),
        // it means the key is already in the correct position, and we can continue
        // with the next element (i + 1) in the next iteration
    }
}
