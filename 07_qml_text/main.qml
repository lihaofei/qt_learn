import QtQuick 2.12
import QtQuick.Window 2.12
    //ctrl + i 自动调整缩进
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        text: "Hello World!"
        font.family: "Helvetica"
        font.pointSize: 24
        color: "red"
        Component.onCompleted: {
            console.log(contentWidth)
            console.log(contentHeight)
        }
    }

    Rectangle{
        y:200
        width: 100
        height: 50
        border.color: "black"
        Text {
            id:txt
            text: "Hello World111111111111111112222277777777777777777722222211!"
            font.family: "Helvetica" //字体
            //font.pixelSize: 20  //像素作为字体大小
            font.pointSize: 9    //磅数作为字体大小
            font.italic: true   //斜体
            font.bold: true    //粗体
            color: "blue"
            font.letterSpacing: 2 //字体之间的距离
            font.underline: true //下划线
            elide: Text.ElideRight
            //width: 100
            anchors.fill: parent
            lineHeight:1.5
            Component.onCompleted: {
                console.log(lineCount) //文本行数
                console.log(lineHeight) //文本行的间距
            }

        }

    }
    Column {
        x:200
        y:200
        width:100
        Text {
            font.pointSize: 24
            text: "<b>Hello</b> 1111111111111111111<i>World!</i>"
            wrapMode: Text.WordWrap //换行
            //anchors.fill: parent
        }
        Text {
            font.pointSize: 24
            textFormat: Text.RichText
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            textFormat: Text.PlainText
            text: "<b>Hello</b> <i>World!</i>"
        }

    }
    Rectangle{
        id:rect
        x:60
        y:50
        width: 100
        height: 200
        border.color: "green"
        Text {
            id:tx1
            font.pointSize: 24
            text: qsTr("sddddddd ddd ddddd ddd")
            wrapMode: Text.WordWrap //换行
            anchors.fill: parent
            elide: Text.ElideRight
            //
        }
    }

    Rectangle{
        id:rect1
        x:60
        y:350


        Text {

            MouseArea{
                anchors.fill:parent

                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                     console.log("hove111r")
                }
            }
            textFormat: Text.RichText
            text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
            onLinkActivated: console.log(link + " link activated")
            onLinkHovered: {
                console.log("hover")
            }
            onHoveredLinkChanged: {
                 console.log("hover link changed",hoveredLink)
            }
        }
    }


}
