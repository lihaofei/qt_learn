import QtQuick 2.0

Rectangle {
    id:border_rect
    property int myTopMargin: 0
    property int myBottomMargin: 0
    width:400
    height:400
    color:"black"
    Rectangle{
        color:"blue"
        anchors.fill:parent
        anchors.topMargin: myTopMargin
        anchors.leftMargin: 1
        anchors.rightMargin: 1
        anchors.bottomMargin: myBottomMargin
    }
}
