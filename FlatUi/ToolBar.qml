import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T
import FlatUi 1.0

T.ToolBar {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0, contentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0, contentHeight + topPadding + bottomPadding)

    contentWidth: contentItem.implicitWidth || (contentChildren.length === 1 ? contentChildren[0].implicitWidth : 0)
    contentHeight: contentItem.implicitHeight || (contentChildren.length === 1 ? contentChildren[0].implicitHeight : 0)    
    leftPadding: 6
    
    background: Rectangle {                
        radius: 6
        height: control.height - 12
        y: 6
        smooth: true
        color: FlatUi.color(FlatUi.WetAsphalt)
    }
}
