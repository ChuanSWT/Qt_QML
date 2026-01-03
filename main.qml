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
        x: 30
        y: 30

        MouseArea {
            anchors.fill: parent
            //动画的状态源
            onClicked: {
                //状态转换
                box.state = box.state === "right" ? "" : "right"
            }
        }
        //这里有各种状态
        states: [
            State {
                name: "right"
                //让property变成什么样
                PropertyChanges {
                    target: box
                    x: 270
                    y: 200
                }
            },
            State {
                name: "left"
                //让property变成什么样
                PropertyChanges {
                    target: box
                    y: 30
                    x: 30
                }
            }
        ]
        //描述了states间的转换细节
        transitions: [
            Transition {
                //从哪些状态转到哪些状态时，
                //需要用这个Transition:
                from: "*"
                to: "*"
                //和上一个task一样，描述了具体的动画
                NumberAnimation {
                    properties: "x"
                    duration: 300
                }
                NumberAnimation {
                    properties: "y"
                    duration: 600
                }
            }
        ]
    }
}
