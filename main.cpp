#include <iostream>
#include <memory>
#include <vector>

#include "AccountsUtil.h"
#include "Account.h"

using namespace std;

int main() {
    
    vector<unique_ptr<Account> > accounts;
    if (!readAccountInfo(accounts)) {
        cerr << "Failed to init account info while reading file" << endl;
        return 1;
    }
  
    display(accounts);
    deposit(accounts, 1000);
    withdraw(accounts, 2000);
    
    return 0;
}