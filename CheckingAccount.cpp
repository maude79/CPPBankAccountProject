#include <iomanip>
#include "CheckingAccount.h"

using namespace std;

CheckingAccount::CheckingAccount(const std::string name, 
                                 const double balance)
    : Account {"Checking", name, balance} {
}

bool 
CheckingAccount::withdraw(const double amount) {
    return Account::withdraw(amount + withdrawal_fee_);
}

bool 
CheckingAccount::deposit(const double amount) {
    return Account::deposit(amount);
}

void
CheckingAccount::print(std::ostream &os) const {
    Account::print(os);
    os << setw(10) << right << "Fee: " << withdrawal_fee_ << "$";
}
