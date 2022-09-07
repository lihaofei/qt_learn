import QtQuick 2.0

Rectangle {

    id:boderRect
    property int myWidth: 100
     property int myHeight:100 //外部一定设置值

     //required  property int myHeight:100 //外部一定设置值
    property string myString: "black"
    property color myColor: "green"
    property url myUrl: "qrc:/MyRect.qml"
    property Component myCom
    property Rectangle myRect
    property var myVar: 0.0  //不知道什么类型
    property list<Rectangle> mylist
    //readonly property color readcolor: "read" //只允许外部读，不允许写入

    property  alias  newinnerRect : innerRect1   //取别名




    width:myWidth
    height: myHeight
    color: "black"

    Rectangle{

        Loader{
            id:loader
            sourceComponent: myCom
        }
        id:innerRect
        color: "blue"
        anchors.fill: parent
        anchors.topMargin: 1
        anchors.bottomMargin: 1
        anchors.leftMargin: 1
        anchors.rightMargin: 1


    }

    Rectangle{
        x:100
        width: 300
        height: 200

        id:innerRect1
        color: "green"




    }


}
