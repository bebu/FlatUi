#include "flatuiplugin.h"
#include "flatui.h"
#include <QFont>
#include <QFontDatabase>
#include <QDebug>


void FlatUiPlugin::registerTypes(const char *uri)
{    
    qmlRegisterUncreatableType<FlatUi>(uri, 1, 0, "FlatUi", "FlatUi provides attached props only");  
    qRegisterMetaType<FlatUi::ColorClass>();
    
}
