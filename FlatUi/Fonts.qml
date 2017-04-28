pragma Singleton

import QtQuick 2.0

Item {
    id:lato
    FontLoader{
        source: "./lato-regular.ttf"
        id: regular
    }
    
    FontLoader{
        source: "./flat-ui-icons-regular.ttf"
        id: glyphicons
    }

    property alias regular : regular.name
    property alias glyphicons : glyphicons.name
    
    property int defaultSize: 13
    
}
