import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 400
    height: 300
    title: "Task 8"

    Rectangle {
        id: box
        width: 80
        height: 80
        color: "tomato"
        x: 50
        y: 110

        MouseArea {
            anchors.fill: parent
            onClicked: {
                box.state = box.state === "right" ? "" : "right"
            }
        }

        states: [
            State {
                name: "right"
                PropertyChanges {
                    target: box
                    x: 270
                }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                NumberAnimation {
                    properties: "x"
                    duration: 300
                }
            }
        ]
    }
}
