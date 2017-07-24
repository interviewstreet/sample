#include <iostream>
using namespace std;

void addnmul(int a, int b) {
  cout << a+b;
  cout << "\n";
  cout<< a*b;
}

int main(){
    int a, b;
    cin >> a >> b;
    addnmul(a, b);

    return 0;
}
