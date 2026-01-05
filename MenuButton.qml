import QtQuick 2.15

Rectangle {
    id: root
    width: parent.width
    height: 50

    property string text: ""
    property bool active: false

    color: active ?  "#2c3e50": "#34495e"

    Text {
        anchors.centerIn: parent
        text: root.text
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }

    signal clicked()
}
