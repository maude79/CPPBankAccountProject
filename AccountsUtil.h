/*
Utility functions for Main
//readAccountInfo(.): retrieves info about various types of accounts and stores them in concrete Account(*) class objects
//display(.) : print elements from a vector containing Account object ptrs
//deposit(.) : deposit a given amount into Account objects contained in the vector
//withdraw(.): withdraw a given amount from Account objects contained in vector
*/ 

#ifndef ACCOUNTSUTIL_H_
#define ACCOUNTSUTIL_H_

#include <vector>
#include "Account.h"

bool readAccountInfo(std::vector<std::unique_ptr<Account> > &accounts);
void display(const std::vector<std::unique_ptr<Account> > &accounts);
void deposit(std::vector<std::unique_ptr<Account> > &accounts, const double amount);
void withdraw(std::vector<std::unique_ptr<Account> > &accounts, const double amount);

#endif // ACCOUNTSUTIL_H_
