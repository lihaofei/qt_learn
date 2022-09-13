import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
//import QtQuick.Controls 2.5
Popup {
    id: popup
    x: 100
    y: 100
    width: 400
    height: 300

    visible: true
    //closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    closePolicy:Popup.NoAutoClose
    modal:false
    dim:true
    enter: Transition {
        NumberAnimation { property: "opacity"; from: 0.0; to: 1.0
            duration:2000}
    }
    exit: Transition {
        NumberAnimation { property: "opacity"; from: 1.0; to: 0.0
            duration:2000}
    }

    contentItem: Rectangle{
        anchors.fill:parent
        color: "gray"
        Text{ id:txt

            text:qsTr("SDDDDDDDDDDDuDDDDD")
            font.pixelSize: 26
            wrapMode:Text.WordWrap
        }
        Button{
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            text:"cancel"
        }
        Button{
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 130
            text:"ok"
        }
    }
    Overlay.modal: Rectangle { //模态除popup以为的范围
        anchors.fill: parent
        color: "#aacfdbe7"
    }
    Overlay.modeless: Rectangle {  //非模态除popup以为的范围
        anchors.fill: parent
       color: "#33000000"
     //   color: "red"
        //  color: "3300000"
        Popup{
            width: parent.width
//            height: parent.height
            visible: true
            closePolicy:Popup.NoAutoClose
            background: Rectangle{
                color:"transparent"
               // color:"gray"
            }

            Button{
                id:bt1
                width: 50
                height: 50
                anchors.right: parent.right

                onClicked: {
                    console.log("onClicked")
                }
            }
        }
    }

    //    Overlay.modeless: Rectangle {
    //            anchors.fill: parent
    //        color: "red"
    //    }




}

