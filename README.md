# Account Project
 * The purpose of this project is to showcase my knowledge of various features in C++

# Project description
 * The main func reads lines with basic bank account info from a given input file
 * Objects of different types are dynamically created based on the info read from the file
 * Once all objects are created, the program displays formatted output info about the accounts created
 * Deposits and widthdrawals are made to/from the accounts; the account balances change differently depending on the type of Account
  - Checking Accounts have a fee of $50 for withdraw money
  - Savings Accounts earn 5% interest on balance

# Main showcased features of the language
 * I/O Stream reading/write and Stream manipulation
 * Usage of Interface class
 * Classes / Objects
 * Inheritance and base class abstraction
 * Factory method design
 * Dynamic Polymorphism
 * Smart Pointer usage
 * Operator overloading as Global functions

# Source files and Classes
## Printable.[cpp/h]
 * Has the Printable class, which is an interface class used to print concrete derived Account objects
## Account.[cpp/h]
 * Contains the abstract base class Account, as well as static Factory method to create concrete subclasses dynamically
 * Holds the basic member attributes of account type, account holder name and account balance
## InvalidAccount.[cpp/h]
 * Implements InvalidAccount subclass; these objects are created if the account entry files in input file are incorrect
## CheckingAccount.[cpp/h]
 * Implements CheckingAccount subclass, which includes its own member attribute for withdrawal fee
## SavingsAccount.[cpp/h]
 * Implements SavingsAccount subclass, which includes its own member attribute for interest rate
## AccountsUtil.[cpp/h]
 * Contains helper functions called from main (readInputFile, display accounts info, desposit to / withdraw from accounts)      
## main.cpp
 * Program execution control
  
# Functionalities that would be nice, but that are not implemented 
 * Desposit / Withdraw from a specific account (based on account type and holder name)
 * Print the accounts sorted by (a) account type and (b) name of account holder alphabetically
 * Mutators for derived class objects' member attributes
 * Allow for adding / deleting accounts during runtime
 * Print ostream to log file instead of console
