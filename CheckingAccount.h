/*
The CheckingAccount class will 
*/
#ifndef CHECKINGACCOUNT_H_
#define CHECKINGACCOUNT_H_

#include <iostream>
#include <string>
#include "Account.h"

class CheckingAccount: public Account {
private:
    static constexpr const char *default_name {"Unnamed Checking Account"};
    static constexpr double default_balance {0.0};
    static constexpr double default_withdrawal_fee {5}; //Whole dollar amount
protected:
    double withdrawal_fee_{default_withdrawal_fee};
public:
    CheckingAccount(const std::string name = default_name, 
                    const double balance = default_balance);    
    virtual bool withdraw(const double amount) override;
    virtual bool deposit(const double amount) override;
    virtual void print(std::ostream &os) const override;
    //dynamic polymorphism requires virtual dtor
    virtual ~CheckingAccount() = default;
};

#endif // CHECKINGACCOUNT_H_
