#include "myobject.h"

MyObject::MyObject(QObject *parent) : QObject(parent)
{

}

int MyObject::iValue() const
{
    return m_iValue;
}

void MyObject::setIValue(int iValue)
{
    m_iValue = iValue;
}

QString MyObject::sString() const
{
    return m_sString;
}

void MyObject::setSString(const QString &sString)
{
    m_sString = sString;
}
MyObject *MyObject::getInstance()
{
    static MyObject * obj = new MyObject();
    return  obj;
}

