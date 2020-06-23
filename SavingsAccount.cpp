#include <iomanip>
#include "SavingsAccount.h"

using namespace std;

SavingsAccount::SavingsAccount(const std::string name, 
                               const double balance)
    : Account {"Saving", name, balance} {
}

bool 
SavingsAccount::deposit(const double amount) {
    const double int_rate_earned = amount * (int_rate_/100);
    return Account::deposit(amount + int_rate_earned);
}

bool 
SavingsAccount::withdraw(const double amount) {
    return Account::withdraw(amount);
}

void
SavingsAccount::print(std::ostream &os) const {
    Account::print(os);
    os << setw(10) << right << "IR: " << int_rate_ << "%";
}