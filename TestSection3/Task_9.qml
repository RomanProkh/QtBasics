import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 300
    height: 300
    visible: true
    title: "Rectangle State Toggle"

    Rectangle {
        id: rect
        width: 100
        height: 100
        color: "blue"
        anchors.centerIn: parent

        states: [
            State {
                name: "active"
                PropertyChanges {
                    target: rect  // Element being changed
                    color: "red"
                }
            }
        ]

        MouseArea {
            anchors.fill: parent
            // Toggle state on click
            onClicked: rect.state === "active" ? rect.state = "" : rect.state = "active"
        }
    }
}
