//
// Created by wt on 2020/8/28.
//

#include "URScript.h"

URScript::URScript() {

}

URScript::~URScript() {

}

QString URScript::loadMovejScript(double *joints, double a, double v) {
    //'movej([90,80], a=1.4, v=1.05, t=0, r=0)'
    QString msg{"movej(["};
    for (int i = 0; i < 6; ++i) {
        msg += QString::number(joints[i]);
        if (i != 5) {
            msg += ",";
        }
    }
    msg += "], a=";
    msg += QString::number(a);
    msg += ", v=";
    msg += QString::number(v);
    //最后面  必要要有换行符
    msg+=", t=0, r=0)\n";
    return msg;
}

QString URScript::loadMovelScript(double *pose, double a, double v) {
    //movel(pose, a=1.2, v=0.25, t=0, r=0)
    QString msg{"movel(p["};
    for (int i = 0; i < 6; ++i) {
        msg += QString::number(pose[i]);
        if (i != 5) {
            msg += ",";
        }
    }
    msg += "], a=";
    msg += QString::number(a);
    msg += ", v=";
    msg += QString::number(v);
    //最后面  必要要有换行符
    msg+=", t=0, r=0)\n";
    return msg;
}
