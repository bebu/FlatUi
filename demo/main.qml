import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import FlatUi 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    
    header: ToolBar{
        Row{
            ToolButton{
                text: "Search"
            }
        }
    }
    
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        
        Page1 {
        }
        
        Page {
            Column{
                spacing: 5
                Button{
                    FlatUi.colorClass: FlatUi.Primary
                    text: "Primary Style"
                }
                Button{
                    FlatUi.colorClass: FlatUi.Danger
                    text: "Danger Style"
                }            
                Slider{
                    FlatUi.colorClass: FlatUi.Warning
                }
                
                ProgressBar{
                    FlatUi.colorClass: FlatUi.Inverse
                    from: 0
                    to: 100
                    value: 75
                }
                
                Label {
                    text: qsTr("Second page")                
                }
            }
        }
    }
    
    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
