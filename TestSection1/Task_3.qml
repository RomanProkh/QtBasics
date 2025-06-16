// main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "QML Imperative Style Example"

    Column {
        anchors.centerIn: parent
        spacing: 20

        // Declarative + Imperative Style
        Column {
            spacing: 5
            Text {
                text: "Declarative + Imperative Style"
                font.bold: true
            }

            Rectangle {
                width: 100
                height: 100
                color: "blue"

                // Imperative part: Executed at runtime
                Component.onCompleted: {
                    console.log("Rectangle created")
                }
            }
        }
    }
}
