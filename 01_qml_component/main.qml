import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Component.onCompleted: {
        console.log("onCompleted",width,height,color)
    }
    Component.onDestruction: {
         console.log("onDestruction")
    }
    Component{
        id:com
        Rectangle{
            width:200
            height: 100
            color:"black"
        }
    }
    Loader{
       // source: "/main.qml"
        id:loader
        asynchronous: true  //异步处理。防止过大的界面卡死
        sourceComponent: com
        onStatusChanged: {
            console.log("status:",status)
        }
    }
    Button{
        width:50
        height:50
        x:200
        onClicked:{
            loader.item.color="red"
            loader.item.width=50
            loader.item.height=50
           //loader.sourceComponent=null
            loader2.item.paused=!loader2.item.paused
        }
    }

    Component{
        id:com1
        Image{
            y:300
            id:img
            source:"/2.jpg"
            width:200
            height:200
        }
    }

    Loader{
       // source: "/main.qml"

        asynchronous: true  //异步处理。防止过大的界面卡死
        sourceComponent: com1
        onStatusChanged: {
            console.log("status:",status)
        }
    }

    Component{
        id:com2

        AnimatedImage{
            id:img2
             x:400
            source:"/1.gif"
            width:200
            height:200
            speed: 10
        }
    }

    Loader{
       // source: "/main.qml"
        id:loader2
        asynchronous: true  //异步处理。防止过大的界面卡死
        sourceComponent: com2
        onStatusChanged: {
            console.log("status:",status)
        }
    }
}
