import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea{
        id:mousearea
        width: 200
        height:200
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        hoverEnabled: true
        cursorShape: Qt.CrossCursor

        Rectangle {
            id: container
            width: 600; height: 200

            Rectangle {
                id: rect
                width: 50; height: 50
                color: "red"
                opacity: (600.0 - rect.x) / 600

                MouseArea {
                    anchors.fill: parent
                    drag.target: rect
                    drag.axis: Drag.XAxis
                    drag.minimumX: 0
                    drag.maximumX: container.width - rect.width
                }
            }
        }
        Rectangle{
            anchors.fill: parent
            color: "black"
        }
        onHoveredChanged: {
            console.log("onHoveredChanged")
        }

        onContainsMouseChanged: {

            console.log("onContainsMouseChanged",containsMouse)
        }
        onContainsPressChanged:
        {
             console.log("onContainsPressChanged",containsPress)
        }

        onClicked: {

            console.log("clicked")
        }
        onPressed: {
            var ret =pressedButtons & Qt.LeftButton
            var ret2 =pressedButtons & Qt.RightButton
            console.log(ret?"left":ret2?"right":"other")
             console.log("onPressed")
        }
        onReleased: {
            console.log("onReleased")
        }
    }
}
