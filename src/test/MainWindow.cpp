//
// Created by wt on 2020/8/28.
//

#include "MainWindow.h"

MainWindow::MainWindow() {
    //初始化界面
    initUI();
    //设置回调
    setCallBack();
    //按钮点击事件
    bindSignal();
}

void MainWindow::initUI() {
    setFixedSize(600, 800);
    //布局
    QFormLayout *layout = new QFormLayout;
    //ip输入框
    ipEdit = new QLineEdit("192.168.36.24");
    //端口输入框
    portEdit = new QLineEdit("30003");

    //连接状态
    statusLabel = new QLabel("未连接");

    //连接机械臂按钮
    connectBtn = new QPushButton("连接机械臂");
    disConnectBtn = new QPushButton("断开连接");

    //movej的每一个关节输入
    joint1Edit = new QLineEdit("-144.98");
    joint2Edit = new QLineEdit("-97.67");
    joint3Edit = new QLineEdit("-102.98");
    joint4Edit = new QLineEdit("-68.95");
    joint5Edit = new QLineEdit("83.07");
    joint6Edit = new QLineEdit("58.15");

    //movej
    movejBtn = new QPushButton("moveJ");

    //movel输入
    xEdit = new QLineEdit("-54.16");
    yEdit = new QLineEdit("-324.52");
    zEdit = new QLineEdit("183.76");
    rxEdit = new QLineEdit("3.1225");
    ryEdit = new QLineEdit("0.5556");
    rzEdit = new QLineEdit("0.2693");

    //movel
    movelBtn = new QPushButton("moveL");

    //添加
    layout->addRow("ip", ipEdit);
    layout->addRow("port", portEdit);
    layout->addRow("连接状态", statusLabel);
    layout->addRow("", connectBtn);
    layout->addRow("", disConnectBtn);

    layout->addRow("关节1:", joint1Edit);
    layout->addRow("关节2:", joint2Edit);
    layout->addRow("关节3:", joint3Edit);
    layout->addRow("关节4:", joint4Edit);
    layout->addRow("关节5:", joint5Edit);
    layout->addRow("关节6:", joint6Edit);

    layout->addRow("", movejBtn);

    layout->addRow("x:", xEdit);
    layout->addRow("y:", yEdit);
    layout->addRow("z:", zEdit);
    layout->addRow("rx:", rxEdit);
    layout->addRow("ry:", ryEdit);
    layout->addRow("rz:", rzEdit);

    layout->addRow("", movelBtn);

    //设置布局
    setLayout(layout);
}

MainWindow::~MainWindow() {

}

void MainWindow::bindSignal() {
    //连接机械臂
    connect(connectBtn,&QPushButton::clicked,this,&MainWindow::connectToRobot);
    //断开连接
    connect(disConnectBtn,&QPushButton::clicked,this,&MainWindow::disConnectToRobot);
    //movej信号
    connect(movejBtn,&QPushButton::clicked,this,&MainWindow::movej);
    //movel信号
    connect(movelBtn,&QPushButton::clicked,this,&MainWindow::movel);
}

void MainWindow::connectToRobot() {
    //通过机器人驱动库  连接机器人
    //ip
    URDriver::getInstance()->connectToRobot(ipEdit->text(),portEdit->text().toInt());
}

void MainWindow::disConnectToRobot() {
    URDriver::getInstance()->disConnectToRobot();
}

void MainWindow::setCallBack() {
    //连接回调
    URDriver::getInstance()->setConnectCallBack([this]{
        //更新界面状态
        statusLabel->setText("已连接");
    });

    //断开连接回调
    URDriver::getInstance()->setDisConnectCallBack([this]{
        //更新界面状态
        statusLabel->setText("未连接");
    });
}

void MainWindow::movej() {
    //获取6个关节角度
    double joint1 = joint1Edit->text().toDouble()*DEGREETORADIUS;
    double joint2 = joint2Edit->text().toDouble()*DEGREETORADIUS;
    double joint3 = joint3Edit->text().toDouble()*DEGREETORADIUS;
    double joint4 = joint4Edit->text().toDouble()*DEGREETORADIUS;
    double joint5 = joint5Edit->text().toDouble()*DEGREETORADIUS;
    double joint6 = joint6Edit->text().toDouble()*DEGREETORADIUS;
    //关节角度
    double joints[]{joint1,joint2,joint3,joint4,joint5,joint6};
    //移动机械臂
    URDriver::getInstance()->movej(joints);
}

void MainWindow::movel() {
    //获取位置和姿态
    double x = xEdit->text().toDouble()/1000;
    double y = yEdit->text().toDouble()/1000;
    double z = zEdit->text().toDouble()/1000;
    double rx = rxEdit->text().toDouble();
    double ry = ryEdit->text().toDouble();
    double rz = rzEdit->text().toDouble();
    //位置和姿态
    double pose[]{x,y,z,rx,ry,rz};
    //调用驱动的movel方法
    URDriver::getInstance()->movel(pose);
}
