import QtQuick 2.9
import QtQuick.Controls 2.2
import FlatUi 1.0

Item {
    implicitWidth: 56
    implicitHeight: 28

    property Item control

    Rectangle {
        y: parent.height / 2 - height / 2
        width: 56
        height: 16
        radius: 8
        color: control.checked ? (control.visualFocus ? FlatUi.textColor : FlatUi.color(FlatUi.Default)) : FlatUi.color(FlatUi.Default)
        border.width: control.visualFocus ? 2 : 0
        border.color: FlatUi.color(FlatUi.Default)
    }

    Rectangle {
        x: Math.max(0, Math.min(parent.width - width, control.visualPosition * parent.width - (width / 2)))
        y: (parent.height - height) / 2
        width: 28
        height: 28
        radius: 16
        color: control.enabled ? (control.down
            ? (control.visualFocus ? Default.focusPressedColor : Default.indicatorPressedColor)
            : (control.visualFocus ? Default.focusLightColor : Default.backgroundColor)) : Default.indicatorDisabledColor
        border.width: control.visualFocus ? 2 : 1
        border.color: control.enabled ? (control.visualFocus
            ? Default.focusColor
            : (control.down ? Default.indicatorFramePressedColor : Default.indicatorFrameColor)) : Default.indicatorFrameDisabledColor

        Behavior on x {
            enabled: !control.down
            SmoothedAnimation { velocity: 200 }
        }
    }
}
