#include <iostream>
#include <stdlib.h>

using namespace std;

int Inverse(int A[], int R[], int n, int i);

int main()
{
    int n;
    int A[20], R[20];
    cout << "Introduce value n: ";
    cin >> n;
    cout << "Introduce " << n << " values in array: ";
    for (int i = 0; i < n; i++)
        cin >> A[i];
    Inverse(A, R, n, 0);
    for (int i = 0; i < n; i++)
        cout << "R[" << i << "] = " << R[i] << endl;

    return 0;
}

int Inverse(int A[], int R[], int n, int i)
{
    if (n == 1)
        R[i] = A[0];
    else
    {
        R[i] = A[n];
        Inverse(A, R, n-1, i+1);
    }
}
/*
#include <stdio.h>

void revR(int* beg, int* en, int n)
{
    if (n > 1)
    {
        int t = *beg;
        *beg = *en;
        *en = t;
        revR(beg + 1, en - 1, n - 2);
    }
}

int main(void)
{
    int arr[] = { 1, 2, 3, 4, 5, 6 };
    revR(arr, arr + 5, 6);
    for (int i = 0; i < 6; i++) printf("%d ", arr[i]);
    return 0;
}
*/
