import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button{
        id:btn
        width:50
        height: 50
        //checkable: true
        checkable: true
        autoExclusive: true
//        onCheckableChanged: {
//            console.log("changed",checkable)
//        }
//        onClicked: {
//            btn.checked=!btn.checked
//        }

    }


    Button{
        id:btn1
        x:60
        width:50
        height: 50
        checkable: true
        autoExclusive: true

    }
    Button{
        x:120
        id:btn2
        width:50
        height: 50
        checkable: true
        autoExclusive: true
    }

    Button{
        x:180
        id:btn3
        width:50
        height: 50
        //autoRepeat: true
        autoRepeatDelay: 3000
        autoRepeatInterval: 1000
        onClicked: {
            console.log("onClicked")
        }
        onPressed:{
             console.log("onPressed")
        }
        onReleased: {
            console.log("onReleased")
        }

    }

    Button{
        x:240
        id:btn4
        width:50
        height: 50
        //autoRepeat: true
        autoRepeatDelay: 3000
        autoRepeatInterval: 1000
        checkable: true
        onDownChanged: {
             console.log("onDownChanged")
        }

    }

    Button{
        x:300
        id:btn5
        width:50
        height: 50
        //autoRepeat: true
        autoRepeatDelay: 3000
        autoRepeatInterval: 1000
        checkable: true
        //icon.source: "/test256.ico"
        //icon.color: "red"

//        indicator: Image {
//            id: ind
//            source: "/test256.ico"
//        }
        text:"sddd"

    }

    Button{
        x:360
        id:btn6
        width:50
        height: 50
        //autoRepeat: true
        autoRepeatDelay: 3000
        autoRepeatInterval: 1000
        checkable: true
        //icon.source: "/test256.ico"
        //icon.color: "red"

//        indicator: Image {
//            id: ind
//            source: "/test256.ico"
//        }
        background: Rectangle{
            anchors.fill: btn6
            color: {
                if(btn6.pressed)
                {
                    return "red"
                }
                else{
                    return "blue"
                }
            }
        }


    }
}
