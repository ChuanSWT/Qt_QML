import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 600
    height: 400
    title: "Task 4"



    Rectangle {
        id: leftPanel
        anchors.left: parent.left
        anchors.right:rightPanel.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: "gray"
    }
    Rectangle {
        id: rightPanel
        width: 200
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: "#2c3e50"
    }
}
