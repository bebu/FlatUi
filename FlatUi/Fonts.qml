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
    property int iconSize: 12
    
    
    readonly property string triangle_up: "\ue600";
    readonly property string triangle_down: "\ue601";
    readonly property string triangle_up_small: "\ue602";
    readonly property string triangle_down_small: "\ue603";
    readonly property string triangle_left_large: "\ue604";
    readonly property string triangle_right_large: "\ue605";
    readonly property string arrow_left: "\ue606";
    readonly property string arrow_right: "\ue607";
    readonly property string plus: "\ue608";
    readonly property string cross: "\ue609";
    readonly property string check: "\ue60a";
    readonly property string radio_unchecked: "\ue60b";
    readonly property string radio_checked: "\ue60c";
    readonly property string checkbox_unchecked: "\ue60d";
    readonly property string checkbox_checked: "\ue60e";
    readonly property string info_circle: "\ue60f";
    readonly property string alert_circle: "\ue610";
    readonly property string question_circle: "\ue611";
    readonly property string check_circle: "\ue612";
    readonly property string cross_circle: "\ue613";
    readonly property string plus_circle: "\ue614";
    readonly property string pause: "\ue615";
    readonly property string play: "\ue616";
    readonly property string volume: "\ue617";
    readonly property string mute: "\ue618";
    readonly property string resize: "\ue619";
    readonly property string list: "\ue61a";
    readonly property string list_thumbnailed: "\ue61b";
    readonly property string list_small_thumbnails: "\ue61c";
    readonly property string list_large_thumbnails: "\ue61d";
    readonly property string list_numbered: "\ue61e";
    readonly property string list_columned: "\ue61f";
    readonly property string list_bulleted: "\ue620";
    readonly property string window: "\ue621";
    readonly property string windows: "\ue622";
    readonly property string loop: "\ue623";
    readonly property string cmd: "\ue624";
    readonly property string mic: "\ue625";
    readonly property string heart: "\ue626";
    readonly property string location: "\ue627";
    readonly property string new_icon: "\ue628";
    readonly property string video: "\ue629";
    readonly property string photo: "\ue62a";
    readonly property string time: "\ue62b";
    readonly property string eye: "\ue62c";
    readonly property string chat: "\ue62d";
    readonly property string home: "\ue62e";
    readonly property string upload: "\ue62f";
    readonly property string search: "\ue630";
    readonly property string user: "\ue631";
    readonly property string mail: "\ue632";
    readonly property string lock: "\ue633";
    readonly property string power: "\ue634";
    readonly property string calendar: "\ue635";
    readonly property string gear: "\ue636";
    readonly property string bookmark: "\ue637";
    readonly property string exit: "\ue638";
    readonly property string trash: "\ue639";
    readonly property string folder: "\ue63a";
    readonly property string bubble: "\ue63b";
    readonly property string export_icon: "\ue63c";
    readonly property string calendar_solid: "\ue63d";
    readonly property string star: "\ue63e";
    readonly property string star_2: "\ue63f";
    readonly property string credit_card: "\ue640";
    readonly property string clip: "\ue641";
    readonly property string link: "\ue642";
    readonly property string tag: "\ue643";
    readonly property string document: "\ue644";
    readonly property string image: "\ue645";
    readonly property string facebook: "\ue646";
    readonly property string youtube: "\ue647";
    readonly property string vimeo: "\ue648";
    readonly property string twitter: "\ue649";
    readonly property string spotify: "\ue64a";
    readonly property string skype: "\ue64b";
    readonly property string pinterest: "\ue64c";
    readonly property string path: "\ue64d";
    readonly property string linkedin: "\ue64e";
    readonly property string google_plus: "\ue64f";
    readonly property string dribbble: "\ue650";
    readonly property string behance: "\ue651";
    readonly property string stumbleupon: "\ue652";
    readonly property string yelp: "\ue653";
    readonly property string wordpress: "\ue654";
    readonly property string windows_8: "\ue655";
    readonly property string vine: "\ue656";
    readonly property string tumblr: "\ue657";
    readonly property string paypal: "\ue658";
    readonly property string lastfm: "\ue659";
    readonly property string instagram: "\ue65a";
    readonly property string html5: "\ue65b";
    readonly property string github: "\ue65c";
    readonly property string foursquare: "\ue65d";
    readonly property string dropbox: "\ue65e";
    readonly property string android: "\ue65f";
    readonly property string apple: "\ue660";       
    
}
