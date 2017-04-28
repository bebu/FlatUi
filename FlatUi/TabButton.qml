import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T
import FlatUi 1.0

T.TabButton {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
                             contentItem.implicitHeight + topPadding + bottomPadding)
    baselineOffset: contentItem.y + contentItem.baselineOffset

    padding: 6
    FlatUi.colorClass: FlatUi.Primary

    font.family: Fonts.regular
    font.pointSize: Fonts.defaultSize
    contentItem: Text {
        text: control.text
        font: control.font
        elide: Text.ElideRight
        opacity: enabled ? 1 : 0.3
        color: FlatUi.lightTextColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        implicitHeight: 40
        color: control.down | control.checked ? FlatUi.darkerColor(control.FlatUi.colorClass)
                            :  FlatUi.color(control.FlatUi.colorClass)
        Behavior on color{ ColorAnimation{} }
    }
}
