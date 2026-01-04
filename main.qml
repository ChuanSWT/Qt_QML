import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 360
    height: 240
    title: "Task 9"

    Column {
        anchors.centerIn: parent
        spacing: 12
        width: parent.width * 0.7

        TextField {
            id: userField
            placeholderText: "Username"
        }

        TextField {
            id: passField
            placeholderText: "Password"
            echoMode: TextInput.Password
        }

        Button {
            text: "Login"
            onClicked: {
                console.log("User:", userField.text)
                console.log("Pass:", passField.text)
            }
        }
    }
}
