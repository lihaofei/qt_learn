import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyRect{
        x:400
        y:400
        myTopMargin: 10
        myBottomMargin: 10

    }

    Rectangle{

        width:100
        height:50
        color:"black"
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: parent
    }

    Rectangle{
        id:rect1
        x:50
        y:50
        z:5
        width:100
        height:50
        color:"red"
    }

    Rectangle{
        id:rect2
        x:60
        y:60
        z:4
        width:100
        height:50
        color:"green"
        focus:true

        MouseArea{
             anchors.fill:parent
             onClicked: {
                 console.log("onClicked")
             }
        }



    }

    Rectangle{
        id:rect3
        x:0
        y:300
        width:100
        height:50
        color:"blue"
        border.width: 2
        border.color:"red"
        radius:5

    }


    Rectangle {
        id: rect
        x:500
        width: 100; height: 100
        color: "blue"

        Behavior on width {
            NumberAnimation { duration: 1000 }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: rect.width = 50
        }
    }
    Rectangle {
        id: rect11
        width: 100; height: 100
        color: "red"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }

        states: State {
            name: "moved"; when: mouseArea.pressed
            PropertyChanges { target: rect11; x: 50; y: 50 }
        }

        transitions: Transition {
            NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
        }
    }
    Rectangle{
        id:rect8
        x:500
        y:300
        width:100
        height:50
        color:"blue"
        border.width: 2
        border.color:"red"
        radius:5
        SequentialAnimation on color {
            ColorAnimation {to: "black";duration: 2000}
            ColorAnimation {to: "white";duration: 2000}
        }

    }

    Rectangle{
        id:rect7
        x:200
        y:100
        width:100
        height:50
        color:"blue"
        border.width: 2
        border.color:"red"
        radius:5

        PropertyAnimation on x{
            to:500
            duration: 2000
        }


        PropertyAnimation on y{
            to:600
            duration: 2000
        }

        PropertyAnimation on width{
            to:200
            duration: 2000
        }

    }


    Rectangle{
        id:root

        width:100
        height:50
        color:"yellow"
        anchors.left: rect3.right
        anchors.top: rect3.top
        anchors.leftMargin: 20
        state:"normal"
        states:[
            State {
                name: "red_color"
                PropertyChanges {
                    target: root;color:"red";width:200

                }
            },
            State {
                name: "blue_color"
                PropertyChanges {
                    target: root;color:"blue";height:200

                }
            },
            State {
                name: "normal"
                PropertyChanges {
                    target: root;color:"yellow"

                }
            }

        ]

        MouseArea{
            anchors.fill:parent
            onClicked: {
                animateColor.start()
                animateOpacity.start()
            }

            onPressed: {
                root.state="red_color"

            }
            onReleased: {
                 root.state="blue_color"
            }
        }
       PropertyAnimation{
           id:animateColor
           target:root
           properties: "color"
           to:"green"
           duration: 1000
       }

       NumberAnimation{
           id:animateOpacity
           target: root
           properties: "opacity"
           from:0.1
           to:1.0
           duration: 2000
       }
    }

    onWidthChanged: {
        console.log("width:",width)
    }

}
