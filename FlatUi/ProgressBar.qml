import QtQuick 2.9
import QtQuick.Templates 2.2 as T
import QtQuick.Controls 2.2
import FlatUi 1.0

T.ProgressBar {
    id: control
    
    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                                         contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                                          contentItem.implicitHeight + topPadding + bottomPadding)
    
    contentItem: Item{
        Rectangle {
            x: control.leftPadding 
            y: control.topPadding + (control.availableHeight - height) / 2 
            
            width: parent.width * control.position
            height: parent.height 
            radius: 6
            color: FlatUi.color(control.FlatUi.colorClass)
            scale: control.mirrored ? -1 : 1
        }
    }
    
    background: Rectangle {
        x: control.leftPadding 
        y: control.topPadding + (control.availableHeight - height) / 2 
        implicitWidth: horizontal ? 200 : 10
        implicitHeight: horizontal ? 10 : 200
        width: control.availableWidth 
        height: implicitHeight 
        radius: 6
        color: FlatUi.color(FlatUi.Default)
        scale: control.mirrored ? -1 : 1
        
        readonly property bool horizontal: true
        
    }
}