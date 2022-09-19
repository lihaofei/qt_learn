import QtQuick 2.5
import QtQuick.Controls 2.5
Rectangle{
    width: 180; height: 200
    border.color: "black"
    anchors.centerIn: parent

    Component {
        id: sectionHeading
        Rectangle {
            width: 400
            height: childrenRect.height
            color: "lightsteelblue"
            //required property string section
            Text {
                text: section
                font.bold: true
                font.pixelSize: 20
            }
        }
    }
    ListView {
        // y:20
        width: 180; height: 200
        id:list
        //        header:Rectangle{
        //            width: 400; height: 20
        //            color: "blue"

        //        }
        //        footer:Rectangle{
        //            width: 400; height: 20
        //            color: "red"
        //        }
        model:

            ListModel {
            ListElement {
                name: "Bill Smith"
                number: "555 3264"
                size:"small"
            }
            ListElement {
                name: "John Brown"
                number: "555 8426"
                size:"big"
            }
            ListElement {
                name: "Sam Wise"
                number: "555 0473"
                size:"mid"
            }
        }
        spacing:10
        flickableDirection: Flickable.HorizontalFlick
        highlight:Rectangle{
            color:"gray"
            radius: 5
        }

        //        delegate: Rectangle {
        //            color:"transparent"
        //            radius: 5
        //            height:50
        //            width: list.width
        //            Text{
        //                id:txt
        //                text:name

        //            }
        //            MouseArea{
        //                anchors.fill: parent
        //                onClicked:
        //                {
        //                    list.currentIndex= index
        //                    console.log("currentIndex",index)
        //                }
        //            }

        //        }


        delegate: Row{


            Text{id:t1;text:'<b>Name:</b>'+name;width: 160}
            Text{id:t2;text:'<b>Name:</b>'+number;width: 160}


        }

        section.property: "size"
        section.criteria: ViewSection.FullString
        section.delegate: sectionHeading
    }
}

