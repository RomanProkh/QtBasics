import QtQuick
import QtQuick.Window

Window {
    width: 300
    height: 300
    visible: true
    title: "Rectangle Width Animation On Clicked"

    Rectangle {
        id: rect
        width: 100
        height: 100
        color: "blue"
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: anim.start()
        }

        PropertyAnimation {
            id: anim
            target: rect // Specify the object being animated
            property: "width"
            to: 200
            duration: 1000 // Define how long the animation lasts
        }
    }
}
