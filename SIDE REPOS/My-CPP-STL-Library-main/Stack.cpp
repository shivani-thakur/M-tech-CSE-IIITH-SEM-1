#include <iostream>
#include <string>
using namespace std;
#define ll long long
#define ull unsigned long long
#define mod 1000000007
#define stack_size 3000

//*****************************************************************
//                  Implementation of custom stack DS
//*****************************************************************
class C_stack
{
    number a[stack_size];
    int top;

public:
    C_stack()
    {
        top = -1;
    }

    void c_push(number ox)
    {
        if (top == stack_size - 1)
        {
            //  cout<<"stack overflow\n";
            return;
        }
        top++;
        a[top] = ox;
    }

    void c_pop()
    {
        if (top == -1)
        {
            // cout<<"stack underflow\n";
            return;
        }
        top = top - 1;
    }

    number c_top()
    {
        if (top == -1)
        {
            // cout << "stack is empty\n";
            cout<<"";
        }
        return a[top];
    }

    bool c_empty()
    {
        return (top == -1);
    }
};

// main function can be implemented as per need