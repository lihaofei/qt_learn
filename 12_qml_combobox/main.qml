import QtQuick 2.12
import QtQuick.Window 2.12
 import QtQuick.Controls 2.12
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        width: 400
        height: 300
        border.color: "black"
        MyCombobox{
            bISPopupShowDown:true
       y:200
        }
    }

    Button {
            id:btn
            width:100
            height: 50
            focus: false
//            focusPolicy:Qt.NoFocus
            background: Rectangle{
                anchors.fill: parent
                border.color: btn.focus?"blue":"red"


            }
            onFocusReasonChanged: {
                  console.log("focusReason",focusReason)
                console.log("MouseFousReason",Qt.MouseFousReason)
                console.log("TabFocusReason",Qt.TabFocusReason)

            }

            onFocusChanged: {
                console.log("focus",focus)
            }
            Component.onCompleted: {
                console.log("foucusPolicy:",focusPolicy)
                 console.log("StrongFocus:",Qt.StrongFocus)
            }
    }

//    Rectangle{
//        width:300
//        height: 200
//        border.color: "black"
//        Text {
//            id: txt1
//            focus:true
//            text: qsTr("111text "+txt1.focus+" activeFous "+activeFocus)
//            Component.onCompleted: {
//                console.log("text1 onCompleted ")
//            }        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                txt1.forceActiveFocus()
//            }
//        }
//    }

//    Rectangle{
//        width:300
//        height: 200
//        border.color: "red"
//        y:100
//        Text {
//            id: txt2
//            focus:true
//            text: qsTr("222text "+txt2.focus+" activeFous "+activeFocus)
//            Component.onCompleted: {
//                console.log("text2 onCompleted ")
//            }
//            MouseArea{
//                anchors.fill: parent
//                onClicked: {
//                    txt2.forceActiveFocus()
//                }
//            }
//        }
//    }

    FocusScope{
        x:100
        width:300
        height: 200
      focus:true
        Button {
            id: btn1
            focus:true
            focusPolicy:Qt.NoFocus
            width: 100
            height: 50
            background: Rectangle{
                anchors.fill: parent
                border.color: btn.focus?"blue":"red"


            }
            onClicked: {
                btn1.forceActiveFocus()
            }
                  }


    }

    FocusScope{
             x:100
        width:300
        height: 200
      focus:true
        y:100
        Button {
            id: btn2
            focus:true
            width: 100
            height: 50
            focusPolicy:Qt.NoFocus
            background: Rectangle{
                anchors.fill: parent
                border.color: btn.focus?"blue":"red"


            }
            onClicked: {
                btn2.forceActiveFocus()
            }

        }
    }
}
