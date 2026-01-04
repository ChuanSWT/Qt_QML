import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 200
    height: 120
    radius: 8
    color: "#ffffff"
    border.color: "#cccccc"
    //参数链接
    property string title: ""
    property string value: ""

    Column {
        anchors.centerIn: parent
        spacing: 6

        Text {
            text: root.title
            font.pixelSize: 14
            color: "#666666"
        }

        Text {
            text: root.value
            font.pixelSize: 22
            font.bold: true
            color: "#333333"
        }
    }
}
