#ifndef _DOVE_LOG_H
#define _DOVE_LOG_H 1

#include <string>
#include <fstream>

namespace dove
{

class logfile
{
public:
    static std::string default_path;

    void open(const std::string&);
    void close();

    bool is_open() const;

    template<typename _T>
    logfile& operator << (const _T&);

private:
    std::ofstream _M_file;
};

}

#endif
