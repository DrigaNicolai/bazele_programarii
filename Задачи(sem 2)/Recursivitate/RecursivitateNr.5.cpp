#include <iostream>
#include <stdlib.h>

using namespace std;

bool Check(int A[], int n, int value);

int main()
{
    int n, value;
    int A[20];
    cout << "Introduce value n: ";
    cin >> n;
    cout << "Introduce necessary value: ";
    cin >> value;
    cout << "Introduce " << n << " values in array: ";
    for (int i = 0; i < n; i++)
        cin >> A[i];
    if (Check(A, n, value))
        cout << "\nElement " << value << " is in array";
    else
        cout << "\nElement " << value << " is not in array";

    return 0;
}

bool Check(int A[], int n, int value)
{
    if (A[n-1] == value)
        return true;
    else if (n != 0)
        return Check(A, n-1, value);
    else
        return false;
}
