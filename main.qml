import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 300
    height: 200
    title: "Task 5"
    property bool is_active: false
    Rectangle {
        anchors.fill: parent

        color: is_active ? "tomato" : "steelblue"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                is_active = !is_active
            }
        }

        Text {
            anchors.centerIn: parent
            text: is_active ? "ON" : "OFF"
            color: "white"
            font.pixelSize: 24
        }
    }
}
