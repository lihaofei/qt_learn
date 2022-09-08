import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    Rectangle{

        DelayButton{

            width:150
            height: 50
            delay:3000
            onProgressChanged: {
                console.log(progress)
            }
        }
//    }
        ButtonGroup{
        id:btngrp
        exclusive: true
        buttons: col.children
        }

        Column {
            x:400
            RadioButton {
                checked: true
                text: qsTr("First")
            }
            RadioButton {
                text: qsTr("Second")
            }
            RadioButton {
                text: qsTr("Third")
            }
        }

        Column {
            id:col
            x:200
            Switch {
                     text: qsTr("Wi-Fi")
                     LayoutMirroring.enabled: true
                     onPositionChanged: {
                         console.log("pos",position)
                     }
                     onVisualPositionChanged: {
                         console.log("vis pos:",visualPosition)
                     }
                 }
                 Switch {
                     text: qsTr("Bluetooth")
                 }
        }

        TabBar {
            x:0
            y:200
            id: bar
            width: parent.width
            TabButton {
                text: qsTr("Home")
            }
            TabButton {
                text: qsTr("Discover")
            }
            TabButton {
                text: qsTr("Activity")
            }
        }

        GroupBox {
            x:0
            y:300
            title: "Tab Position"

            Row{

                RadioButton {
                    text: "Top"
                    checked: true

                }
                RadioButton {
                    text: "Bottom"

                }
            }
        }

        Button {
            id:btn
            width: 150
            height: 100
            x:0
            y:500
            background: Rectangle{
                anchors.fill: parent
                color: btn.checked|btn.down ?"blue":"black"
            }
        }
        Button {
            id:control
            width: 150
            height: 100

            x:300
            y:300
            text:qsTr("button")
            contentItem: Text{
                color: "transparent"
                text: control.text
                font.pixelSize: 18
                font.bold:true


            }
            Image {

                id: img
                source: "/2.jpg"
                width: 50
                height: 50
                anchors.right:  parent.right
            }
        }
}
