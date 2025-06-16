import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "Signal Handler On Click"

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width

        Text {
            text: "Signal Handler On Rectangle Click"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }
        // Answer to the question 7
        Rectangle {
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {
                anchors.fill: parent
                // Answer to the question #7
                onClicked: console.log("Rectangle clicked")
            }
        }
    }
}
