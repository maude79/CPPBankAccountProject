#include "iomanip"
#include "InvalidAccount.h"

InvalidAccount::InvalidAccount(const std::string name)
    : Account {"Invalid", name} {
}

void 
InvalidAccount::print(std::ostream &os) const {
    Account::print(os);
}
