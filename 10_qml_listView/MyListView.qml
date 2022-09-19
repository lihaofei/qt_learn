import QtQuick 2.0
import QtQuick.Controls 2.5
ListView {
     width: 180; height: 200

     model: ['sddd','sddd','uuu']
     spacing:10
     delegate: Button {
         text: modelData
     }
 }
