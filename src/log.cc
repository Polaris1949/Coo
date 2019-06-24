#include "log.h"

namespace dove
{

std::string logfile::default_path{"/tmp"};

void
logfile::open(const std::string& __f)
{
    this->_M_file.open(__f);
}

void
logfile::close()
{
    this->_M_file.close();
}

bool
logfile::is_open() const
{
    return this->_M_file.is_open();
}

template<typename _T>
logfile&
logfile::operator << (const _T& __x)
{
    this->_M_file << __x;
    return *this;
}

}
