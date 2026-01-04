import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 300
    height: 400
    title: "Task 10"

    //“数据容器”
    ListModel {
        id: myModel
        ListElement { name: "Apple" }
        ListElement { name: "Banana" }
        ListElement { name: "Orange" }
        ListElement { name: "Grape" }
        ListElement { name: "Peach" }
    }

    //“数据显示器”
    ListView {
        id:myListView
        anchors.fill: parent
        model: myModel
        currentIndex: -1
        spacing:20
        delegate: Rectangle {
            width: parent.width
            height: 50
            color: ListView.isCurrentItem ? "#3498db" : "#ecf0f1"

            Text {
                anchors.centerIn: parent
                text: name
                //ListView.isCurrentItem似乎在这里失效了？一直返回false？
                //因为不在delegate根下
                color: myListView.currentIndex == index? "white" : "black"
            }

            MouseArea {
                anchors.fill: parent
                //状态源
                onClicked: {
                    console.log(index)
                    myListView.currentIndex = index
                }
            }
        }
    }
}
