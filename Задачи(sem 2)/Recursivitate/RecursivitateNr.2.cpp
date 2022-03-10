#include <iostream>
#include <stdlib.h>

using namespace std;

int Produce(int n);

int main()
{
    int n;
    cout << "Introduce value n: ";
    cin >> n;
    cout << "\nP(" << n << ")= " << Produce(n);

    return 0;
}

int Produce(int n)
{
    if (n == 1)
        return 1;
    else
        return (3 * n - 2)  * Produce(n-1);
}
