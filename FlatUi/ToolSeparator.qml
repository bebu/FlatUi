import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T

T.ToolSeparator {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0, contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0, contentItem.implicitHeight + topPadding + bottomPadding)

    padding: vertical ? 6 : 2
    topPadding: vertical ? 2 : 6
    bottomPadding: vertical ? 2 : 6

    contentItem: Rectangle {
        implicitWidth: vertical ? 1 : 42
        implicitHeight: vertical ? 42 : 1
        color: "white"
    }
}
