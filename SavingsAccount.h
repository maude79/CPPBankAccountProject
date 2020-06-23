/*
This class differs from CheckingAccount in that the amount passed to
the deposit(.) func will be incremented by (amount * int_rate/100) 
and then the updated amount will be deposited.
*/

#ifndef SAVINGSACCOUNT_H_
#define SAVINGSACCOUNT_H_

#include "Account.h"

class SavingsAccount: public Account {
private:
    static constexpr const char *default_name = "Unnamed Savings Account";
    static constexpr double default_balance = 0.0;
    static constexpr double default_int_rate = 5; //Percent
protected:
    double int_rate_{default_int_rate};
public:
    SavingsAccount(const std::string name = default_name, 
                   const double balance = default_balance);    
    virtual bool deposit(const double amount) override;
    virtual bool withdraw(const double amount) override;
    virtual void print(std::ostream &os) const override;

    virtual ~SavingsAccount() = default;
};




#endif // SAVINGSACCOUNT_H_
