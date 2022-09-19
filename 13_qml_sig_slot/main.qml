import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//    signal testSig(string s ,int value)

//    function func(ss,ii)
//    {
//        console.log("ss",ss,"ii",ii)
//    }

//    Button{
//        width: 50
//        height: 50
//        onClicked: {
//            testSig("zhangsan","99")
//        }
//    }

//    Component.onCompleted: {
//        testSig.connect(func)
//    }
//}

Window {
  id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    signal testSig(string s ,int value)

    function func(ss,ii)
    {
        console.log("ss",ss,"ii",ii)
    }

    Button{
        width: 50
        height: 50
        onClicked: {
            testSig("zhangsan","99")
        }
    }

    Connections{
        target: window
        onTestSig:{
            console.log(s,value)
        }
    }
}


//Window {
//    id: window
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
//    signal testSig(string s ,int value)


//    Button{
//        width: 50
//        height: 50
//        onClicked: {
//            testSig("zhangsan","99")
//        }
//    }

//    Connections{
//        target: window
//        function onTestSig(str1,ivalue)
//        {
//            console.log("sssus",str1,"iuuui",ivalue)
//        }

//    }
//}

//Window {
//    id: window
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")
////    signal testSig(string s ,int value)

//    MyComponet{
//        com1:com
//        com2:com

//    }

//    Component{
//        id:com

//        Button{
//            width: 50
//            height: 50

////            anchors.fill: parent
//            signal btnSig(int value)
//            onClicked: {
//                console.log("sdd")
//                btnSig(10)
//            }
//        }
//    }



//}

