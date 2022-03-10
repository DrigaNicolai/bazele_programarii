#include <iostream>
#include <stdlib.h>

using namespace std;

int Count(int n, int x);

int main()
{
    int x, n, copyNum;
    int counter = 0;
    cout << "Introduce value n and number x: ";
    cin >> n >> x;
    copyNum = n;
    while(copyNum > 0)
    {
        if (copyNum % 10 == x) counter += 1;
        copyNum /= 10;
    }
    cout << "\nIteration";
    cout << "\nNumber " << x << " meets " << counter << " times in value " << n;
    cout << "\nRecursiveness";
    cout << "\nNumber " << x << " meets " << Count(n, x) << " times in value " << n;

    return 0;
}

int Count(int n, int x)
{
    if ((n/10) != 0)
    {
        if(n % 10 == x)
            return 1 + Count((n/10), x);
        else
            return Count((n/10), x);
    }
    else
        return 0;
}
