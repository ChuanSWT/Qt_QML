import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 400
    height: 300
    title: "Task 2"

    Rectangle {
        anchors.fill: parent
        color: "lightgray"

        Rectangle{
            width:100
            height:100
            color:"red"
            x:100
            y:200
            radius:10
        }

        Rectangle {
            width: 100
            height: 100
            color: "green"
            x: 120
            y: 80
            z: 2
            radius:50
        }

        Rectangle {
            width: 100
            height: 100
            color: "blue"
            x: 90
            y: 120
            z: 1    // 盖在最上面
        }
    }
}
