//
// Created by wt on 2020/8/28.
//

#include "URDriver.h"

shared_ptr<URDriver> URDriver::instance =  shared_ptr<URDriver>(new URDriver);

URDriver::URDriver() {
    //监听connected信号
    QObject::connect(&socket,&QTcpSocket::connected,[this]{
        connectCallBack();
    });

    //断开连接信号
    QObject::connect(&socket,&QTcpSocket::disconnected,[this]{
        disConnectCallBack();
    });
}

URDriver::~URDriver() {
    cout<<"析构函数"<<endl;
}

shared_ptr<URDriver> URDriver::getInstance() {
    return instance;
}

void URDriver::connectToRobot(QString ip,int port){
    socket.connectToHost(ip,port);
}

void URDriver::setConnectCallBack(function<void()> connectCallBack) {
    this->connectCallBack = connectCallBack;
}

void URDriver::setDisConnectCallBack(function<void()> disConnectCallBack){
    this->disConnectCallBack = disConnectCallBack;
}

void URDriver::disConnectToRobot() {
    socket.disconnectFromHost();
}

void URDriver::movej(double joints[6],double a, double v) {
    //发送指令给机械臂  'movej([90,80], a=1.4, v=1.05, t=0, r=0)'
    //1.拼接发送的指令字符串
    QString msg = script.loadMovejScript(joints,a,v);
    //2.通过socket发送拼接的字符串
    socket.write(msg.toUtf8());
}

void URDriver::movel(double *pose, double a, double v) {
    //1.拼接发送的指令字符串
    QString msg = script.loadMovelScript(pose,a,v);
    //2.通过socket发送拼接的字符串
    socket.write(msg.toUtf8());
}
