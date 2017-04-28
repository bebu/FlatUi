import QtQuick 2.9
import QtQuick.Templates 2.2 as T
import FlatUi 1.0

T.Button {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                             contentItem.implicitHeight + topPadding + bottomPadding)        
    padding: 0
    leftPadding: 25
    rightPadding: 25
    font.family: Fonts.regular
    font.pointSize: Fonts.defaultSize

    contentItem: Text {        
        text: control.text
        font: control.font
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
    
    opacity: enabled ? 1 : 0.7
    background: Rectangle {
        id:bg
        implicitWidth: 90
        implicitHeight: 40
        width: parent.width
        height: parent.height
        radius: 6   
        clip: true        
        color: control.pressed ? FlatUi.darkerColor(control.FlatUi.colorClass) : 
                                 FlatUi.color(enabled ? control.FlatUi.colorClass : FlatUi.Default)
        Behavior on color{ ColorAnimation{} }
    }   
}
