#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "flatuiplugin.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    
    qputenv("QT_QUICK_CONTROLS_STYLE", "FlatUi");
    FlatUiPlugin::registerTypes();
            
    QGuiApplication app(argc, argv);
    
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    
    return app.exec();
}
