/*
The IPrintable class is an interface.
It is used to print any type of object that is derived from it.
The concreate derived class must implement the virtual print(.) func.
*/ 

#ifndef IPRINTABLE_H_
#define IPRINTABLE_H_

class IPrintable
{
    friend std::ostream &operator<<(std::ostream &os, const IPrintable &rhs);
public:
    virtual void print(std::ostream &os) const = 0;
    virtual ~IPrintable() = default;
};

#endif // IPRINTABLE_H_
