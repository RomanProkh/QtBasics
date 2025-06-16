import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "Declaring Color With Properties"

    // Declare a color property
    property color rectColor: "red"

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width

        Text {
            text: "Declaring Color With Properties"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Rectangle {
            id: rect
            width: 100
            height: 100
            color: rectColor
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
