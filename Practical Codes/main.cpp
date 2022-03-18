#include<iostream>
using namespace std;
// using namespace std;
// int main()
// {
//     char str[5] = "ABC";
//     cout << str[3];
//     cout << str;
//     return 0;
// }
ont 
void fun(struct node *start)
{
    if (start == NULL)
        return;
    printf("%d ", start->data);
    if (start->next != NULL)
        fun(start->next->next);
    printf("%d ", start->data);
}
