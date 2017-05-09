import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import FlatUi 1.0
import QtGraphicalEffects 1.0

Item {
    implicitWidth: 68
    implicitHeight: 29
    id: indicator
    property Item control
    clip: true
    
    RowLayout {        
        clip: true     
        readonly property int maxOffset: indicator.implicitWidth - block.width
        property int pos : control.visualPosition
        x: -maxOffset + Math.max(0,  control.visualPosition * maxOffset)
        id: row
        width: indicator.width * 2 - block.width
        height: indicator.height
        spacing: 0
        Rectangle{
            width: indicator.implicitWidth
            Layout.fillHeight: true            
            color: FlatUi.color(control.enabled ? FlatUi.Inverse : FlatUi.Default)
            
            Label{
                width: parent.width - block.width
                height: parent.height
                font.family: Fonts.glyphicons
                font.pointSize: Fonts.iconSize
                text: Fonts.check
                color: FlatUi.color(control.FlatUi.colorClass)
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            
            Rectangle{
                id: block
                width: 25
                color: control.position ? FlatUi.color(control.FlatUi.colorClass) : FlatUi.darkerColor(FlatUi.Default)
                anchors.right : parent.right
                height: parent.height
                Behavior on color { ColorAnimation {} }
            }                        
        }

        
        Rectangle{              
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: FlatUi.color(FlatUi.Default)
            Label{
                width: parent.width
                height: parent.height
                font.family: Fonts.glyphicons
                font.pointSize: Fonts.iconSize
                text: Fonts.cross
                color: FlatUi.lightTextColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        
        Behavior on x {
            enabled: !control.down
            SmoothedAnimation { velocity: 200 }
        }
        
    }    
    
    layer.enabled: true
    layer.effect: OpacityMask {
        maskSource: Rectangle {                
            width: indicator.width 
            height: indicator.height
            radius: 6
        }        
    }
    
    Rectangle{
        anchors.fill: row
        visible: !control.enabled
        color: FlatUi.color(FlatUi.Default)
        opacity: 0.7
    }
        
}
