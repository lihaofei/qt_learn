import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
     ButtonGroup{
         id:childrenGroup
         exclusive: true
         buttons: col.children
     }
     ButtonGroup{
         id:childrenGroup1
         exclusive: true
        // buttons: col.children
     }

    Column{
        x:0
        id:col
        CheckBox{
            checkable: true
            text:qsTr("one")
        }
        CheckBox{
            checkable: true
            text:qsTr("two")
        }
        CheckBox{
            checkable: true
            text:qsTr("three")
        }
    }

    Column{
        x:100
        id:col2
        CheckBox{
            checkable: true
            text:qsTr("one")
            ButtonGroup.group: childrenGroup1
        }
        CheckBox{
            checkable: true
            text:qsTr("two")
             ButtonGroup.group: childrenGroup1
        }
        CheckBox{
            checkable: true
            text:qsTr("three")
             ButtonGroup.group: childrenGroup1
        }
    }


    Column {
        x:200
        ButtonGroup {
            id: childGroup
            exclusive: false
            checkState: parentBox.checkState
        }

        CheckBox {
            id: parentBox
            text: qsTr("Parent")
            checkState: childGroup.checkState
        }

        CheckBox {
            checked: true
            text: qsTr("Child 1")
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
        }

        CheckBox {
            text: qsTr("Child 2")
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
        }
    }

}
