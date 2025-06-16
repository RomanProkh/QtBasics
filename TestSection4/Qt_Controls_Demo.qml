//Importing Modules
import QtQuick
import QtQuick.Controls
//Defining the UI structure and navigation
ApplicationWindow {
    id: appWindow
    visible: true
    width: 400
    height: 600
    title: "Qt Quick Controls Interactive Demo"
    // Global palette for customization
    palette {
        id: appPalette
        button: "lightblue"
        buttonText: "green"
        window: "lightgray"
        windowText: "black"
    }
    //Navigation between pages using StackView
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: mainPage
    }
    //Main Page Component
    Component {
        id: mainPage
        Page {
            title: "Main Page"
            Pane {
                anchors.fill: parent
                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Label {
                        text: "Welcome to the Qt Quick Controls Demo"
                        font.pixelSize: 18
                    }

                    Button {
                        text: "Go to Settings"
                        highlighted: true
                        onClicked: stackView.push(settingsPage) //Navigate to Settings page
                    }
                }
            }
        }
    }
    //Settings Page Component
    Component {
        id: settingsPage
        Page {
            title: "Settings"
            Pane {
                anchors.fill: parent
                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Label {
                        text: "Adjust Your Preferences"
                        font.pixelSize: 16
                    }
                    //Volume slider control
                    Row {
                        spacing: 10
                        Label { text: "Volume" }

                        Slider {
                            from: 0
                            to: 100
                            value: 50
                            onValueChanged: console.log("Volume changed to:", value)
                        }
                    }
                    //Brightness dial control
                    Row {
                        spacing: 10
                        Label { text: "Brightness:" }

                        Dial {
                            from: 0
                            to: 100
                            value: 75
                            onValueChanged: console.log("Brightness changed to:", value)
                        }
                    }
                    //Theme selection ComboBox
                    ComboBox {
                        id: themeSelector
                        model: ["Light Theme", "Dark Theme", "Blue Theme"]
                        onActivated: {
                            switch (currentIndex) {
                            case 0:
                                appPalette.window = "lightgray"
                                appPalette.windowText = "black"
                                break
                            case 1:
                                appPalette.window = "darkslategray"
                                appPalette.windowText = "white"
                                break
                            case 2:
                                appPalette.window = "dodgerblue"
                                appPalette.windowText = "white"
                                break
                            }
                        }
                    }
                    //Button to navigate back to the main Page
                    Button {
                        text: "Back to Main"
                        onClicked: stackView.pop()
                    }
                }
            }
        }
    }
}
