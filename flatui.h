#ifndef FLATUI_H
#define FLATUI_H

#include <QObject>
#include <QtQml>
#include <QColor>

class FlatUi : public QObject
{
    Q_OBJECT        
    
    QColor m_lightTextColor;
    
    QColor m_lightTextColorDisabled;
    
    QColor m_backgroundColor;
    
    QColor m_textColor;

public:
    enum ColorClass : QRgb{        
        Turquoise = 0x1abc9c,
        GreenSea = 0x16a085,
        
        Emerald = 0x2ecc71,
        Nephritis = 0x27ae60,
        
        PeterRiver = 0x3498db,
        BelizeHole = 0x2980b9,
        
        Amethyst = 0x9b59b6,
        Wisteria = 0x8e44ad,
        
        WetAsphalt = 0x34495e,
        MidnightBlue = 0x2c3e50,
        
        SunFlower = 0xf1c40f,
        Orange = 0xf39c12,
        
        Carrot = 0xe67e22,
        Pumpkin = 0xd35400,
        
        Alizarin = 0xe74c3c,
        Pomegranate = 0xc0392b,
        
        Clouds = 0xecf0f1,
        Silver = 0xbdc3c7,
        
        Concrete = 0x95a5a6,
        Asbestos = 0x7f8c8d,

        Primary = Turquoise, 
        Warning = SunFlower, 
        Default = Silver, Danger = Alizarin,
        Success = Emerald, Inverse = WetAsphalt, 
        Info = PeterRiver
        
    };
    ColorClass m_colorClass;
    
    Q_ENUM(ColorClass)
    Q_PROPERTY(ColorClass colorClass READ colorClass WRITE setColorClass NOTIFY colorClassChanged)
    
    Q_PROPERTY(QColor lightTextColor READ lightTextColor WRITE setLightTextColor NOTIFY lightTextColorChanged)
    Q_PROPERTY(QColor lightTextColorDisabled READ lightTextColorDisabled WRITE setLightTextColorDisabled NOTIFY lightTextColorDisabledChanged)
    Q_PROPERTY(QColor backgroundColor READ backgroundColor WRITE setBackgroundColor NOTIFY backgroundColorChanged)
    Q_PROPERTY(QColor textColor READ textColor WRITE setTextColor NOTIFY textColorChanged)
    
public:
    explicit FlatUi(QObject *parent = 0);
    
    static FlatUi* qmlAttachedProperties(QObject* object);
    
    
    ColorClass colorClass() const
    {
        return m_colorClass;
    }
    
    Q_INVOKABLE QColor color(FlatUi::ColorClass type) const{
        return QColor(type);
    }
    
    Q_INVOKABLE QColor darkerColor(FlatUi::ColorClass type) const{
        return QColor(type).darker(125);
    }
    
    QColor lightTextColor() const
    {
        return m_lightTextColor;
    }
    
    QColor lightTextColorDisabled() const
    {
        return m_lightTextColorDisabled;
    }
    
    QColor backgroundColor() const
    {
        return m_backgroundColor;
    }
    
    QColor textColor() const
    {
        return m_textColor;
    }
    
public slots:
    void setColorClass(ColorClass colorClass)
    {
        if (m_colorClass == colorClass)
            return;
        
        m_colorClass = colorClass;
        emit colorClassChanged(colorClass);
    }
    
    void setLightTextColor(QColor lightTextColor)
    {
        if (m_lightTextColor == lightTextColor)
            return;
        
        m_lightTextColor = lightTextColor;
        emit lightTextColorChanged(lightTextColor);
    }
    
    void setLightTextColorDisabled(QColor lightTextColorDisabled)
    {
        if (m_lightTextColorDisabled == lightTextColorDisabled)
            return;
        
        m_lightTextColorDisabled = lightTextColorDisabled;
        emit lightTextColorDisabledChanged(lightTextColorDisabled);
    }
    
    void setBackgroundColor(QColor backgroundColor)
    {
        if (m_backgroundColor == backgroundColor)
            return;
        
        m_backgroundColor = backgroundColor;
        emit backgroundColorChanged(backgroundColor);
    }
    
    void setTextColor(QColor textColor)
    {
        if (m_textColor == textColor)
            return;
        
        m_textColor = textColor;
        emit textColorChanged(textColor);
    }
    
signals:
    
    
    void colorClassChanged(ColorClass colorClass);
    void lightTextColorChanged(QColor lightTextColor);
    void lightTextColorDisabledChanged(QColor lightTextColorDisabled);
    void backgroundColorChanged(QColor backgroundColor);
    void textColorChanged(QColor textColor);
};

QML_DECLARE_TYPEINFO(FlatUi, QML_HAS_ATTACHED_PROPERTIES)

#endif // FLATUI_H