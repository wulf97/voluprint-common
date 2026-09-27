#ifndef LOG_H
#define LOG_H

#include <string>

class Log {
public:
    Log();
    virtual ~Log();

private:
    std::string m_logFilePath;
    bool m_isWriteFile;
};

#endif // LOG_H