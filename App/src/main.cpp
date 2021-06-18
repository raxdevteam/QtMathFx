#include <QCoreApplication>
#include <QDebug>

#include <iostream>

#include "app_version.h"
#include "algebrafx.h"
#include "trigofx.h"

using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    cout<<"Hello sub dir app\n";
    cout<<"App name : "<<APP_NAME<<endl;

    cout<<"------------------------------------"<<endl;
    AlgebraFx afx;
    cout<<"Add 10, 30 : "<<afx.add(10,30)<<endl;
    cout<<"Sub 10, 30 : "<<afx.sub(10,30)<<endl;
    cout<<"Mul 10, 30 : "<<afx.mul(10,30)<<endl;
    cout<<"------------------------------------"<<endl;

    TrigoFx tfx;
    cout<<"Trigo=> sin(90) : "<<tfx.tf_sin(90)<<endl;
    cout<<"Trigo=> sin(-90) : "<<tfx.tf_sin(-90)<<endl;
    cout<<"Trigo=> sin(0) : "<<tfx.tf_sin(0)<<endl;
    cout<<"------------------------------------"<<endl;
    cout<<"Trigo=> cos(90) : "<<tfx.tf_cos(90)<<endl;
    cout<<"Trigo=> cos(-90) : "<<tfx.tf_cos(-90)<<endl;
    cout<<"Trigo=> cos(0) : "<<tfx.tf_cos(0)<<endl;

    getchar();
    //return a.exec();
    return  0;
}
