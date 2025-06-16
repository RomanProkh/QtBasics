import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "QML Imperative Style Example"

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width

        // Declarative + Imperative Style
        Text {
            text: "Declarative + Imperative Style"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Rectangle {
            width: 100
            height: 100
            color: "blue"
            anchors.horizontalCenter: parent.horizontalCenter

            // Imperative part: Executed at runtime
            Component.onCompleted: {
                console.log("Rectangle created")
            }
        }
    }
}
