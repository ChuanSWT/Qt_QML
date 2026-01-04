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
        ListElement { name: "Apple";list_color:"#4CAF50"}
        ListElement { name: "Banana";list_color:"#FBC02D" }
        ListElement { name: "Orange";list_color:"#FB8C00" }
        ListElement { name: "Grape" ;list_color:"#8E24AA"}
        ListElement { name: "Peach" ;list_color:"#FFB7A5"}
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
            color:ListView.isCurrentItem ? list_color : myMouseArea.containsMouse?"steelblue":"#ecf0f1"
            //为什么不起作用？
            Behavior on color{
                ColorAnimation{
                    duration:200
                }
            }

            Text {
                anchors.centerIn: parent
                text: name
                //ListView.isCurrentItem似乎在这里失效了？一直返回false？
                //因为不在delegate根下
                color: myListView.currentIndex == index? "white" : "black"
            }
            MouseArea {
                id:myMouseArea
                hoverEnabled: true
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
