#ifndef DONUTWINDOW_H
#define DONUTWINDOW_H

#include <QQuickWidget>

class DonutWindow : public QQuickWidget
{
    Q_OBJECT

public:
    DonutWindow(QWidget *parent = 0);
    ~DonutWindow();
};

#endif // DONUTWINDOW_H
