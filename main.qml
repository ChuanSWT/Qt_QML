import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Window {
    visible: true
    width: 400
    height: 200
    title: "Task 3"

    Row {
        anchors.centerIn: parent
        spacing:20

        Button {
            id:button1;
            text: "Button 1"
        }
        Button {
            id:button2;
            text: "Button 2"
        }
        Button {
            id:button3;
            text: "Button 3"
        }
    }
}
