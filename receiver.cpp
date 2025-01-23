#include "Receiver.h"
#include <QDebug>

Receiver::Receiver(QObject *parent) : QObject(parent)
{
    QDBusConnection connection = QDBusConnection::sessionBus();

    if (!connection.isConnected()) {
        qDebug() << "Error: Not connected to the D-Bus session bus!";
        return;
    } else {
        qDebug() << "Connected to the D-Bus session bus.";
    }

    bool success1 = connection.connect(
        "com.example.DBusDemo.Sender",
        "/Sender",
        "com.example.DBusDemo.Sender",
        "button1Pressed",
        this, SLOT(onButton1Pressed(bool)));

    bool success2 = connection.connect(
        "com.example.DBusDemo.Sender",
        "/Sender",
        "com.example.DBusDemo.Sender",
        "button2Pressed",
        this, SLOT(onButton2Pressed(bool)));

    bool success3 = connection.connect(
        "com.example.DBusDemo.Sender",
        "/Sender",
        "com.example.DBusDemo.Sender",
        "button3Pressed",
        this, SLOT(onButton3Pressed(bool)));

    if (!success1) {
        qDebug() << "Error: Failed to connect to button1Pressed signal!";
    } else {
        qDebug() << "Successfully connected to button1Pressed signal.";
    }

    if (!success2) {
        qDebug() << "Error: Failed to connect to button2Pressed signal!";
    } else {
        qDebug() << "Successfully connected to button2Pressed signal.";
    }

    if (!success3) {
        qDebug() << "Error: Failed to connect to button3Pressed signal!";
    } else {
        qDebug() << "Successfully connected to button3Pressed signal.";
    }
}

void Receiver::onButton1Pressed(bool val)
{
    qDebug() << "Received signal: Button 1 pressed";
    emit updateLight(1, val);
}

void Receiver::onButton2Pressed(bool val)
{
    qDebug() << "Received signal: Button 2 pressed";
    emit updateLight(2, val);
}

void Receiver::onButton3Pressed(bool val)
{
    qDebug() << "Received signal: Button 3 pressed";
    emit updateLight(3, val);
}
