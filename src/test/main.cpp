#include <QApplication>
#include <iostream>
#include <MainWindow.h>

using namespace std;

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    //创建窗口
    MainWindow w;
    //显示窗口
    w.show();
    return QApplication::exec();
}
