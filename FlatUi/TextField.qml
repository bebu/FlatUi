import QtQuick 2.9
import QtQuick.Templates 2.2 as T
import QtQuick.Controls 2.2
import FlatUi 1.0

T.TextField {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            placeholderText ? placeholder.implicitWidth + leftPadding + rightPadding : 0)
                            || contentWidth + leftPadding + rightPadding
    implicitHeight: Math.max(contentHeight + topPadding + bottomPadding,
                             background ? background.implicitHeight : 0,
                             placeholder.implicitHeight + topPadding + bottomPadding)

    padding: 6
    leftPadding: padding + 4

    opacity: enabled ? 1 : 0.2
    color: FlatUi.textColor
    selectedTextColor: color
    verticalAlignment: TextInput.AlignVCenter

    font.family: Fonts.regular
    font.pointSize: Fonts.defaultSize
    property color _flatColor: FlatUi.color(
                                   enabled ? (control.FlatUi.colorClass === FlatUi.Default && control.focus ?  
                                                FlatUi.Primary : control.FlatUi.colorClass
                                              ) : FlatUi.Inverse)
    
    Label {
        id: placeholder
        x: control.leftPadding
        y: control.topPadding
        width: control.width - (control.leftPadding + control.rightPadding)
        height: control.height - (control.topPadding + control.bottomPadding)

        text: control.placeholderText
        font: control.font
        color: control._flatColor
        verticalAlignment: control.verticalAlignment
        visible: !control.length && !control.preeditText && (!control.activeFocus || control.horizontalAlignment !== Qt.AlignHCenter)
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 40
        radius: 6
        border.width: 2
        color: control.enabled ? FlatUi.backgroundColor : Qt.lighter("gray", 1.10)
        border.color:  control._flatColor
                          
        Behavior on border.color{
            ColorAnimation{}
        }
    }    
}
