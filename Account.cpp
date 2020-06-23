#include <string>
#include <iomanip>
#include "Account.h"
#include "CheckingAccount.h"
#include "SavingsAccount.h"
#include "InvalidAccount.h"

using namespace std;

//Method to convert account type string from txt file to enumerators
acct_type 
Account::str_to_type(const std::string &s) {
    if ("CheckingAccount" == s) {
        return Checking;
    } else if ("SavingsAccount" == s) {
        return Savings;
    } else {
        return Invalid;
    }
}

//Static Factory func
std::unique_ptr<Account> 
Account::CreateAccount(const string &s, const string &name, 
                       const double balance) {
    acct_type typ = Account::str_to_type(s);
    switch (typ) {
        case Checking:
            return (make_unique<CheckingAccount>(name, balance));
            break;
        case Savings:
            return (make_unique<SavingsAccount>(name, balance));
            break;
        case Invalid:
        default:
            cerr << "Unrecognized Account Type: " << s << ", creating Invalid Account" << endl;
            return (make_unique<InvalidAccount>(name));
            break;
    }
}

Account::Account(const std::string type, 
                 const std::string name, 
                 const double balance) 
    : type_{type}
    , name_{name}
    , balance_{balance} {
}

bool
Account::deposit(const double amount) {
    if (amount < 0) {
        return false;
    } else {
        balance_ += amount;
        return true;
    }
}

bool
Account::withdraw(const double amount) {
    if (balance_ - amount >= 0) {
        balance_ -= amount;
        return true;
    } else
        return false;
}

 void
 Account::print(std::ostream &os) const {
    os.precision(2); 
    os << fixed 
       << setw(15) << left << type_ 
       << setw(15) << left << name_ 
       << setw(15) << right << balance_;
 }
