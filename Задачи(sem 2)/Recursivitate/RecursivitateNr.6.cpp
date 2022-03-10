#include <iostream>
#include <stdlib.h>

using namespace std;

int Alert(int A[], int n);

int main()
{
    int n;
    int A[20];
    cout << "Introduce value n: ";
    cin >> n;
    cout << "Introduce " << n << " values in array: ";
    for (int i = 0; i < n; i++)
        cin >> A[i];
    Alert(A, n);

    return 0;
}

int Alert(int A[], int n)
{
    if (n == 1)
        cout << "A[" << n-1 << "] = " << A[n-1] << endl;
    else
        Alert(A, n-1);
        if (n-1 != 0)
            cout << "A[" << n-1 << "] = " << A[n-1] << endl;
}
