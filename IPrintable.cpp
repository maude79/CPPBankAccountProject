#include <iostream>
#include "IPrintable.h"

std::ostream &operator<<(std::ostream &os, const IPrintable &rhs) {
    rhs.print(os);
    return os;
}

