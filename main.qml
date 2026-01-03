import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 300
    height: 200
    title: "Task 6"
    color:is_active?"orange":"yellow"
    property int count: 0
    property bool is_active:false
    Column {
        anchors.centerIn: parent
        spacing: 15

        Text {
            text: "Count: " + count
            font.pixelSize: 20
        }

        Button {
            text: "Click Me"
            onClicked:{
                count++
                is_active = !is_active
            }
        }
    }
}
