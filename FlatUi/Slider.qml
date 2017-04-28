import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T
import FlatUi 1.0

T.Slider {
    id:control
    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                           (handle ? handle.implicitWidth : 0) + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                            (handle ? handle.implicitHeight : 0) + topPadding + bottomPadding)

    padding: 6

    handle: Rectangle {
        x: control.leftPadding + (horizontal ? control.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (horizontal ? (control.availableHeight - height) / 2 : control.visualPosition * (control.availableHeight - height))
        property int size: control.pressed ? 24 : 18
        implicitWidth: 24
        implicitHeight: 24
        radius: width / 2
        width: size
        height: size
        color: control.enabled ? (
                control.pressed ? 
                    FlatUi.darkerColor(control.FlatUi.colorClass) : FlatUi.color(control.FlatUi.colorClass) 
                ) : FlatUi.color(FlatUi.Default);
        border.color: FlatUi.darkerColor(control.enabled ? control.FlatUi.colorClass : FlatUi.Default)
        border.width: 1
        Behavior on width { NumberAnimation {} }
        Behavior on height { NumberAnimation {} }
        Behavior on color { ColorAnimation {} }
        readonly property bool horizontal: control.orientation === Qt.Horizontal        
    }

    background: Rectangle {
        x: control.leftPadding + (horizontal ? 0 : (control.availableWidth - width) / 2)
        y: control.topPadding + (horizontal ? (control.availableHeight - height) / 2 : 0)
        implicitWidth: horizontal ? 200 : 10
        implicitHeight: horizontal ? 10 : 200
        width: horizontal ? control.availableWidth : implicitWidth
        height: horizontal ? implicitHeight : control.availableHeight
        radius: 3
        color: FlatUi.color(FlatUi.Default)
        scale: horizontal && control.mirrored ? -1 : 1

        readonly property bool horizontal: control.orientation === Qt.Horizontal
        
        Rectangle {
            x: parent.horizontal ? 0 : (parent.width - width) / 2
            y: parent.horizontal ? (parent.height - height) / 2 : control.visualPosition * parent.height
            width: parent.width * (parent.horizontal ? control.position :  1)
            height: parent.height * (parent.horizontal ? 1 : control.position )
            radius: 3
            color: FlatUi.color(control.enabled ? control.FlatUi.colorClass : FlatUi.Default)
        }
        
    }
    
}
