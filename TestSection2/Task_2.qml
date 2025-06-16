import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "QML Declarative Style Example"

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width

        // Declarative Style

        Text {
            text: "Declarative Style"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Rectangle {
            width: 100
            height: 100
            color: "red"
            anchors.horizontalCenter: parent.horizontalCenter
        }

    }
}
