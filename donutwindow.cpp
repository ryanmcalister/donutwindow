#include "donutwindow.h"

#include <QBitmap>

DonutWindow::DonutWindow(QWidget *parent)
    : QQuickWidget(parent)
{
    // make the window and scene transparent
    setWindowFlags(Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint);
    setAttribute(Qt::WA_TranslucentBackground);
    setClearColor(Qt::transparent);

    // set the ui scene
    setSource(QUrl("qrc:/main.qml"));

    // set a mask to filter out events outside the donut
    setMask(QBitmap::fromImage(QImage(":/donutmask.png")));
}

DonutWindow::~DonutWindow()
{

}
