#ifndef FLATUIPLUGIN_H
#define FLATUIPLUGIN_H

#include <QObject>

#ifndef FLATUI_BUILD_PLUGIN

class FlatUiPlugin : public QObject
{
    Q_OBJECT
    static FlatUiPlugin& instance(){
        static FlatUiPlugin inst;
        return inst;
    }

    QString resolveFileUrl(const QString &filePath) const
    {
        return QStringLiteral("qrc:/FlatUi/") + filePath;
    }
public:     
    
    void registerTypes(const char *uri);
    static void registerTypes()
    {
        instance().registerTypes("FlatUi");
    }
    
signals:
    
public slots:
};

#else
#include <QQmlExtensionPlugin>

class FlatUiPlugin : public QQmlExtensionPlugin {
    Q_OBJECT    
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")
public:
    void registerTypes(const char *uri);
};

#endif

#endif // FLATUIPLUGIN_H