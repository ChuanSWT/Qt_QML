import QtQuick 2.15
import QtQuick.Window 2.15
import "qrc:/components"

Window {
    visible: true
    width: 600
    height: 300
    title: "Task 11"

    Row {
        anchors.centerIn: parent
        spacing: 20
        //根据文件名称引入
        Card {
            //参数链接
            title: "CPU"
            value: "32%"
        }

        Card {
            title: "Memory"
            value: "8 GB"
        }

        Card {
            title: "Disk"
            value: "120 GB"
        }
    }
}
