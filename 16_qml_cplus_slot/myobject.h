#ifndef MYOBJECT_H
#define MYOBJECT_H

#include <QObject>
#include <QtQml>

class MyObject : public QObject
{
    Q_OBJECT
//    QML_ELEMENT
public:
    explicit MyObject(QObject *parent = nullptr);

    int iValue() const;
    void setIValue(int iValue);

    QString sString() const;
    void setSString(const QString &sString);
    static MyObject * getInstance();

   Q_INVOKABLE void func();
public slots:
    void cppSlot(int i,QString s);
signals:
    void iValueChanged();
    void sStringChanged();
private:
    int m_iValue;
    QString m_sString;
//  Q_PROPERTY(int iValue READ iValue WRITE setIValue NOTIFY iValueChanged)
//     Q_PROPERTY(QString sString READ sString WRITE setSString NOTIFY sStringChanged)
    Q_PROPERTY(int iValue MEMBER m_iValue NOTIFY iValueChanged)
       Q_PROPERTY(QString sString MEMBER m_sString NOTIFY sStringChanged)
};

#endif // MYOBJECT_H
