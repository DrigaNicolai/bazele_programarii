#include <iostream>
#include <stdlib.h>

using namespace std;

int Produce(int A[], int n);

int main()
{
    int n;
    int A[20];
    cout << "Introduce value n: ";
    cin >> n;
    cout << "Introduce " << n << " values in array: ";
    for (int i = 0; i < n; i++)
        cin >> A[i];
    cout << "\nArray values produce = " << Produce(A, n) << endl;

    return 0;
}

int Produce(int A[], int n)
{
    if (n == 1)
        return A[0];
    else
        return A[n-1] * Produce(A, n-1);
}
