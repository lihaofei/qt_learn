import QtQuick 2.12
import QtQuick.Window 2.12
import MyObj 1.0
import QtQuick.Controls 2.12
Window {
    visible: true
    property int value: myobj.iValue
    width: 640
    height: 480
    title: qsTr("Hello World")
    MyObject{
        id:myobj
        iValue: 10
        sString:"zhang"

        Component.onCompleted: {
            console.log(iValue,sString)
        }
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
        onClicked: {
            myobj.iValue=20
        }
    }
}
