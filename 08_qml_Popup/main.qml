import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
Window {
    id: window
    width: 800
    height: 800
    visible: true

    Button {
        text: "Open"
        onClicked: popup.close()
    }

    //       Popup {  //类似Rectangle
    //           id: popup
    //           x: 100
    //           y: 100
    //           width: 200
    //           height: 300
    //           modal: true
    //           focus: true
    //           closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    //       }




    //       Rectangle{  //Popup的显示不受父控件的影响
    //            visible: false
    //           width: 200
    //           height: 100
    //           color: "red"
    //           Popup{
    //               id: popup
    //               width: 50
    //                visible: true
    //              // color:"blue"
    //           }
    //       }

    //       Popup{   //Popup永远会覆盖其他控件，popup的z顺序值和其他popup产生作用。
    //           id: popup1
    //           x:100
    //           y:100
    //           z:2
    //           width: 200
    //           height: 100
    //            visible: true
    //          // color:"blue"
    //            background: Rectangle{
    //                color: "black"
    //            }
    //       }

    //       Popup{
    //           id: popup2
    //           x:300
    //           y:300
    //           z:-1
    //           width: 200
    //           height: 100
    //            visible: true
    //          // color:"blue"
    //            background: Rectangle{
    //                color: "red"
    //            }
    //       }


    MyPopup {
         id:popup
    }



}
