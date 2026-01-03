import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 300
    height: 200
    title: "Task 7"

    Rectangle {
        id: box
        width: 100
        height: 100
        color: "steelblue"
        anchors.centerIn: parent
        scale: mouseArea.containsMouse ? 1.2 : 1.0
        //what is that
        Behavior on scale {
            NumberAnimation {
                duration: 100
            }
        }
        //如果不加，则直接切换
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}
