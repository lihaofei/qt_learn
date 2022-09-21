import QtQuick 2.12
import QtQuick.Window 2.12
import MyObj 1.0
import QtQuick.Controls 2.12
Window {
    id:window
    objectName: "window"
    visible: true
    property int value: myobj.iValue
    width: 640
    height: 480
    title: qsTr("Hello World")
    signal qmlSig(int i,string s)
    MyObject{
        id:myobj
        iValue: 10
        sString:"zhang"

//        Component.onCompleted: {
//            console.log(iValue,sString)
//        }
    }
//    Component.onCompleted: {
//        value = width
//    }

    onWidthChanged: {
        console.log(value)
    }
    onValueChanged: {
        console.log(value)
    }

    Button{
        objectName: "mybutton"
        id:mybutton
        onClicked: {
            myobj.iValue=20
            myobj.func()
            qmlSig(30,"zhange123")
        }
    }
//    Connections{
//        target: window
//        function onQmlSig(i,s){
//            myobj.cppSlot(i,s)

//        }
//    }
//    Component.onCompleted: {
//        qmlSig.connect(myobj.cppSlot)
//    }
}
