import QtQuick 2.15
import QtQuick.Window 2.15
import "qrc:/components"
import "qrc:/pages"


Window {
    visible: true
    width: 800
    height: 500
    title: "Day 7 App"

    property string currentPage: "Home"

    Row {
        anchors.fill: parent
        spacing: 0

        // 左侧菜单（固定宽度）
        Column {
            id: leftColumn
            width: 160
            spacing: 2
            QtObject{
                id: page
                readonly property int home: 0
                readonly property int settings: 1
                readonly property int about: 2
            }
            property int current_page:page.home

            Rectangle {
                width: parent.width
                height: 80
                color: "#34495e"
            }

            MenuButton {
                text: "Home"
                active: leftColumn.current_page == page.home
                onClicked: leftColumn.current_page = page.home
            }

            MenuButton {
                text: "Settings"
                active: leftColumn.current_page == page.settings
                onClicked: leftColumn.current_page = page.settings
            }
            MenuButton {
                text: "About"
                active: leftColumn.current_page == page.about
                onClicked: leftColumn.current_page = page.about
            }
        }

        // 右侧页面区域（占用剩余空间）
        Loader {
            id: pageLoader
            width: parent.width - leftColumn.width
            height: parent.height

            opacity: 0.0

            Behavior on opacity {
                NumberAnimation { duration: 1000 }
            }
            Component.onCompleted: {
                opacity = 1.0
            }
            sourceComponent: leftColumn.current_page == page.home? homeComponent:
                             leftColumn.current_page == page.settings? settingsComponent:
                                                        aboutComponent
        }
    }
    //声明组件模板
    Component {
        id: homeComponent
        HomePage { }
    }

    Component {
        id: settingsComponent
        SettingPage { }
    }

    Component {
        id: aboutComponent
        AboutPage { }
    }
}
