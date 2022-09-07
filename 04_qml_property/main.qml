import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "white"
    Component{
        id:com
        Button{
            width: 50
            height: 50

        }
    }

    MyRect{
        x:100
        myWidth:200
        myHeight: 200
        myCom:com
        Component.onCompleted: {
             newinnerRect.color="yellow"
        }
    }
}
