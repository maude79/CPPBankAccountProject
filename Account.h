/*
Account is pure virtual base class, from 
which concrete classes will be derived.
*/ 

#ifndef ACCOUNT_H_
#define ACCOUNT_H_

#include <iostream>
#include <string>
#include "IPrintable.h"

class InvalidAccount;

enum acct_type { Checking, Savings, Invalid};

class Account : public IPrintable {
private:
    //Used by the static factory func to convert acct string from file to enum val
    static acct_type str_to_type(const std::string &s);
public:
    //Factory func to create Account type objects 
    static std::unique_ptr<Account> CreateAccount(const std::string &s,
                                                  const std::string &name,
                                                  const double balance);
private:
    static constexpr const char *default_name {"Unnamed Account"};
    static constexpr double default_balance {0.0};
protected:
    std::string type_;
    std::string name_;
    double balance_;
public:
    Account(const std::string type, 
            const std::string name = default_name, 
            const double balance = default_balance);
    virtual const InvalidAccount *castToInvalidAccount() const { return nullptr; }
    virtual bool deposit(const double amount) = 0;
    virtual bool withdraw(const double amount) = 0;
    virtual void print(std::ostream &os) const override;
    // need virtual dtor since we will be dealing with dynamic polymorphism
    virtual ~Account() = default; 
};

#endif // ACCOUNT_H_
