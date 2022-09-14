import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Repeater{
        model:['Button','Rectangle','MouseArea']
        Button{
           y:index *50
           width: 100
           height: 40
           text: modelData+" "+index
        }
        Component.onCompleted: {
            console.log(count)
        }
    }
}
