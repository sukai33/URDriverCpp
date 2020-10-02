//
// Created by wt on 2020/8/28.
//

#ifndef URDRIVERCPP_MAINWINDOW_H
#define URDRIVERCPP_MAINWINDOW_H
#include <QWidget>
#include <QLineEdit>
#include <QPushButton>
#include <QLabel>
#include <QFormLayout>
#include <iostream>
#include <QString>
#include <QWidget>
#include <QDebug>
#include <URDriver.h>
#include <math.h>
class MainWindow: public QWidget {
private:
    //角度转弧度
    double DEGREETORADIUS = M_PI/180;
    //ip输入框
    QLineEdit *ipEdit;
    //端口输入框
    QLineEdit *portEdit;

    //连接状态
    QLabel *statusLabel;

    //连接机械臂按钮
    QPushButton *connectBtn;
    QPushButton *disConnectBtn;

    //movej的每一个关节输入
    QLineEdit *joint1Edit;
    QLineEdit *joint2Edit;
    QLineEdit *joint3Edit;
    QLineEdit *joint4Edit;
    QLineEdit *joint5Edit;
    QLineEdit *joint6Edit;

    //movej
    QPushButton *movejBtn;

    //movel输入
    QLineEdit *xEdit;
    QLineEdit *yEdit;
    QLineEdit *zEdit;
    QLineEdit *rxEdit;
    QLineEdit *ryEdit;
    QLineEdit *rzEdit;

    //movel
    QPushButton *movelBtn;
public:
    MainWindow();

    ~MainWindow();
    //初始化ui界面
    void initUI();
    //设置回调
    void setCallBack();
    //按钮点击事件
    void bindSignal();
    //连接
    void connectToRobot();
    //断开连接
    void disConnectToRobot();
    //movej
    void movej();
    //movel
    void movel();
};


#endif //URDRIVERCPP_MAINWINDOW_H
