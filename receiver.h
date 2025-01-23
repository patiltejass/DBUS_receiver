#ifndef RECEIVER_H
#define RECEIVER_H

#include <QObject>
#include <QtDBus/QtDBus>

class Receiver : public QObject
{
    Q_OBJECT
    Q_CLASSINFO("D-Bus Interface", "com.example.DBusDemo.Receiver")

public:
    explicit Receiver(QObject *parent = nullptr);

signals:
    void updateLight(int lightId, bool state);

public slots:
    void onButton1Pressed(bool val);
    void onButton2Pressed(bool val);
    void onButton3Pressed(bool val);
};

#endif
