// 1. Declaration
import QtQuick
import QtQuick.Window

Window {
    // 2. Identifier
    id: root

    // 3. Properties
    width: 300
    height: 300
    visible: true
    title: qsTr("Signal Handler on Window Width Change")

    // 4. Signal handler
    onWidthChanged: console.log("Width changed to", width)
}
