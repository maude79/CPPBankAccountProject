#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include "AccountsUtil.h"

using namespace std;

bool
readAccountInfo(std::vector<std::unique_ptr<Account> > &accounts) {
    
    ifstream account_file("../AccountList.txt");
    string account_type;
    string holder_name;
    double balance;
    
    if (!account_file) {
        cerr << "Could not open the accounts file" << endl;
        return false;
    }
    
    int i{0};
    string line;
    while (getline(account_file, line)) {
        
        vector<string> words;
        string word;
        istringstream iss(line);
        while (iss >> word) {
            words.push_back(word);
        }
    
        if (words.size() < 3) {
            cerr << "Cannot create Account info from file entry: " << line << endl;
        } else {
            //use the first 3 fields only, even if more is provided
            account_type = words.at(0);
            holder_name = words.at(1);
            char *cstr = new char [words.at(2).length()+1];
            strcpy(cstr, words.at(2).c_str());
            balance = atof(cstr);
            accounts.push_back(Account::CreateAccount(account_type, holder_name, balance));
            delete [] cstr;
        }
     }
    
    account_file.close();
    return true;
}

//bool sortAccountsByType(string &typ1, string& typ2)
void 
display(const vector<unique_ptr<Account> > &accounts) {

    cout << "\nRegistered Accounts=========================================\n";
    cout << setw(15) << left << "AccountType" 
         << setw(15) << left << "AccountHolder" 
         << setw(15) << right << "Balance"
         << setw(15) << right << "Fee/IR" << endl;
    cout << "------------------------------------------------------------\n";
         
    for (const auto &acc : accounts) {
         if (acc->castToInvalidAccount()) {
            continue;
        }
        cout << *acc << endl;
    }
    cout << endl;
}

void 
deposit(vector<unique_ptr<Account> > &accounts, const double amount) {

    cout << "\nDepositing $" << amount << " to Accounts ============================\n";
    cout << setw(15) << left << "AccountType" 
         << setw(15) << left << "AccountHolder" 
         << setw(15) << right << "Balance"
         << setw(15) << right << "Fee/IR" << endl;
    cout << "------------------------------------------------------------\n";
     
    for (auto &acc : accounts)  {
         if (acc->castToInvalidAccount()) {
            continue;
        }
        
        if (acc->deposit(amount)) {
            cout << *acc << endl;
        } else {
            cout << "Failed Deposit of " << amount << " to " << *acc << endl;
        }
    }
    cout << endl;
}

void 
withdraw(vector<unique_ptr<Account> > &accounts, const double amount) {

    cout << "\nWithdrawing $" << amount << " from Accounts =========================\n";
    cout << setw(15) << left << "AccountType" 
         << setw(15) << left << "AccountHolder" 
         << setw(15) << right << "Balance"
         << setw(15) << right << "Fee/IR" << endl;
    cout << "------------------------------------------------------------\n";
    
    for (auto &acc : accounts)  {
        if (acc->castToInvalidAccount()) {
            continue;
        }
        if (acc->withdraw(amount)) {
            cout << *acc << endl;
        } else {
            cout << "Failed Withdrawal of " << amount << " from " << *acc << endl;
        }
    } 
    cout << endl;
}
