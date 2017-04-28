#include "flatui.h"
#include <QFontDatabase>
#include <QFont>

FlatUi::FlatUi(QObject *parent) : QObject(parent), m_colorClass(Default),
    m_lightTextColor(Qt::white), m_lightTextColorDisabled(Qt::lightGray),
    m_backgroundColor(Qt::white), m_textColor(Qt::black)
{        
}

FlatUi *FlatUi::qmlAttachedProperties(QObject *object)
{
    return new FlatUi(object);
}

Q_DECLARE_METATYPE(FlatUi::ColorClass)