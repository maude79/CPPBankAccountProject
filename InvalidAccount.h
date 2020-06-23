#ifndef INVALIDACCOUNT_H_
#define INVALIDACCOUNT_H_

#include "Account.h"

class InvalidAccount: public Account {
private:
    static constexpr const char *default_name = "Unnamed Invalid Account";
public:
    InvalidAccount(const std::string name = default_name);   
    virtual const InvalidAccount *castToInvalidAccount() const override { return this; } 
    virtual bool deposit(const double amount) override { return false; }
    virtual bool withdraw(const double amount) override { return false; }
    virtual void print(std::ostream &os) const override;

    virtual ~InvalidAccount() = default;
};


#endif // INVALIDACCOUNT_H_
