#include <iostream>
#include <stdlib.h>

using namespace std;

int Count(int n);

int main()
{
    int n;
    cout << "Introduce value n: ";
    cin >> n;
    cout << "\nS(" << n << ")= " << Count(n);

    return 0;
}

int Count(int n)
{
    if (n == 1)
        return 1;
    else
        return (2 * n - 1)  + Count(n-1);
}
