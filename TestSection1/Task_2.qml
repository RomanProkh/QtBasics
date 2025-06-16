// main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "QML Declarative Style Example"

    Column {
        anchors.centerIn: parent
        spacing: 20

        // Declarative Style
        Column {
            spacing: 5
            Text {
                text: "Declarative Style"
                font.bold: true
            }

            Rectangle {
                width: 100
                height: 100
                color: "red"
            }
        }
    }
}
