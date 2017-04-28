import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T
import FlatUi 1.0

T.ToolButton {
    id: control

    implicitWidth: Math.max(contentItem.implicitWidth + 2 * padding, 53)
    implicitHeight: 53

    padding: 6
    font.family: Fonts.regular
    font.pointSize: Fonts.defaultSize

    contentItem: Text {
        text: control.text
        font: control.font
        color: control.enabled ? (control.visualFocus || control.hovered ? FlatUi.color(FlatUi.GreenSea) : FlatUi.lightTextColor) : FlatUi.lightTextColorDisabled
        elide: Text.ElideRight
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        Behavior on color{
            ColorAnimation{}
        }
    }        
}
