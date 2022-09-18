import QtQuick 2.0
import QtQuick.Controls 2.12
//ComboBox {
//    width: 200
//    model: [ "Banana", "Apple", "Coconut" ]
//    Component.onCompleted: {
//        console.log(count)
//    }
//}

//ComboBox {
//    currentIndex: 2
//    model: ListModel {
//        id: cbItems
//        ListElement { text: "Banana"; color: "Yellow" }
//        ListElement { text: "Apple"; color: "Green" }
//        ListElement { text: "Coconut"; color: "Brown" }
//    }
//    width: 200
//    onCurrentIndexChanged: console.debug(cbItems.get(currentIndex).text + ", " + cbItems.get(currentIndex).color)
//}


//ComboBox {
//    editable: true
//    model: ListModel {
//        id: model
//        ListElement { text: "Banana" }
//        ListElement { text: "Apple" }
//        ListElement { text: "Coconut" }
//    }
//    onAccepted: {
//        if (find(editText) === -1)
//            model.append({text: editText})
//    }
//}


//ComboBox {

//    model: 3
//    onCurrentIndexChanged:{
//        console.log("text",currentIndex)
//    }
//    onCurrentTextChanged: {
//        console.log("value",currentText)
//    }
////    onCurrentValueChanged:{
//// console.log("value",currentValue)
////    }
//}


//ComboBox {
//    textRole: "key"

//    displayText: currentText + "  "+currentIndex
//    model: ListModel {
//        ListElement { key: "First"; value: 123 }
//        ListElement { key: "Second"; value: 456 }
//        ListElement { key: "Third"; value: 789 }
//    }

//        onCurrentTextChanged: {
//            console.log("value",currentText)
//        }


//}


ComboBox {
    flat: false
    displayText: "0"
    model: 10
    editable: true
  validator: RegExpValidator { regExp: /[0-9A-F]+/ }
  onAcceptableInputChanged: { //当前有没有匹配validator验证器
      console.log(acceptableInput)
  }

    Rectangle {
        id: rectangle
        x: -307
        y: 15
        width: 200
        height: 200
        color: "#e75757"
    }
}

