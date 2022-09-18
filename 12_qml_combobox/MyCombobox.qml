import QtQuick 2.0

import QtQuick 2.12
 import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
 ComboBox {
     property bool bISPopupShowDown:true
     id: control
     model: ["First", "Second", "Third","First", "Second", "Third"]

     delegate: ItemDelegate {  //针对吗model中的每一项的具体绘制
         width: control.width
         contentItem: Text {
             text: modelData
             color:index%2 ? "red" :"blue"
             font: control.font
             elide: Text.ElideRight
             verticalAlignment: Text.AlignVCenter
         }
         highlighted: control.highlightedIndex === index
     }

//     indicator: Canvas {
//         id: canvas
//         x: control.width - width - control.rightPadding
//         y: control.topPadding + (control.availableHeight - height) / 2
//         width: 12
//         height: 8
//         contextType: "2d"

//         Connections {
//             target: control
//             onPressedChanged: canvas.requestPaint()
//         }

//         onPaint: {
//             context.reset();
//             context.moveTo(0, 0);
//             context.lineTo(width, 0);
//             context.lineTo(width / 2, height);
//             context.closePath();
//             context.fillStyle = control.pressed ? "#17a81a" : "#21be2b";
//             context.fill();
//         }
//     }
//     indicator: Image{
//         id:img
//         anchors.right: parent.right
//         anchors.verticalCenter: parent.verticalCenter
//         source: "/test.jpg"
//     }

     contentItem: Text { //当前文本显示的内容
         leftPadding: 0
         rightPadding: control.indicator.width + control.spacing

         text: control.displayText
         font: control.font
         color: control.pressed ? "blue" : "#21be2b"
         verticalAlignment: Text.AlignVCenter
         elide: Text.ElideRight
     }

     background: Rectangle {
         implicitWidth: 120
         implicitHeight: 40
         border.color: control.pressed ? "red" : "#21be2b"
         border.width: control.visualFocus ? 2 : 1
         radius: 2
     }

     popup: Popup { //和delagate的区别是 delegate是绘制单个项 而popup绘制的是整个下拉控件
         y: bISPopupShowDown? control.height +10 :-control.height -80
         width: control.width
//         implicitHeight: contentItem.implicitHeight

         implicitHeight:150
         padding: 1

         contentItem: ListView {
             clip: true
             implicitHeight: contentHeight
             model: control.popup.visible ? control.delegateModel : null
             currentIndex: control.highlightedIndex
             interactive: true
               boundsBehavior: Flickable.StopAtBounds
             //ScrollIndicator.vertical: ScrollIndicator { }
             ScrollBar.vertical: ScrollBar
             {
             policy:ScrollBar.AlwaysOn}
         }

         background: Rectangle {
             border.color: "yellow"
             radius: 2
             layer.enabled: true
             layer.effect: DropShadow {
                 anchors.fill: butterfly
                 horizontalOffset: 3
                 verticalOffset: 3
                 radius: 8.0
                 samples: 17
                 color: "#80000000"
                 source: butterfly
             }
         }
     }
 }
