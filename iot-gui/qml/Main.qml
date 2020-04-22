import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.1

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    NavigationStack {

        Page {
            id: home
            title: qsTr("IOT Configuration")

            // holds the input form
            GridLayout {
                id: grid
                columns: 2
                rows: 7
                rowSpacing: 45
                // IP addess text and feild
                AppText {
                    id: ipLabel
                    text: qsTr("IP address:")
                    font.pixelSize: sp(16)
                    //  anchors.verticalCenter:  parent.left
                }
                AppTextField {
                    id: ipText
                    Layout.preferredWidth: dp(200)
                    showClearButton: true
                    font.pixelSize: sp(14)
                    borderColor: Theme.tintColor
                    borderWidth: !Theme.isAndroid ? dp(2) : 0
                    // anchors.left: ipLabel.right
                    placeholderText: "IOT module IP address"
                }

                AppText {
                    id: portLabel
                    text: qsTr("Port Number:")
                    font.pixelSize: sp(16)
                    //   anchors.top: ipLabel.bottom
                }

                AppTextField {
                    id: portText
                    Layout.preferredWidth: dp(200)
                    showClearButton: true
                    font.pixelSize: sp(14)
                    borderColor: Theme.tintColor
                    borderWidth: !Theme.isAndroid ? dp(2) : 0
                    //  anchors.top: ipText.bottom
                    placeholderText: "Enter your port number"
                }

                AppText {
                    id: forwardLabel
                    text: qsTr("Forward:")
                    font.pixelSize: sp(16)
                    //  anchors.top: ipLabel.bottom
                }

                AppTextField {
                    id: forwardText
                    Layout.preferredWidth: dp(200)
                    showClearButton: true
                    font.pixelSize: sp(14)
                    borderColor: Theme.tintColor
                    borderWidth: !Theme.isAndroid ? dp(2) : 0
                    // anchors.top: ipText.bottom
                    placeholderText: "Your forward command"
                }
                AppText {
                    id: backwardLabel
                    text: qsTr("Backwards:")
                    font.pixelSize: sp(16)
                    //   anchors.top: ipLabel.bottom
                }

                AppTextField {
                    id: backwardText
                    Layout.preferredWidth: dp(200)
                    showClearButton: true
                    font.pixelSize: sp(14)
                    borderColor: Theme.tintColor
                    borderWidth: !Theme.isAndroid ? dp(2) : 0
                    //    anchors.top: ipText.bottom
                    placeholderText: "Your backward command"
                }
                AppText {
                    id: leftLabel
                    text: qsTr("Left:")
                    font.pixelSize: sp(16)
                    //   anchors.top: ipLabel.bottom
                }

                AppTextField {
                    id: leftText
                    Layout.preferredWidth: dp(200)
                    showClearButton: true
                    font.pixelSize: sp(14)
                    borderColor: Theme.tintColor
                    borderWidth: !Theme.isAndroid ? dp(2) : 0
                    //    anchors.top: ipText.bottom
                    placeholderText: "Your left turn command"
                }
                AppText {
                    id: rightLabel
                    text: qsTr("Right:")
                    font.pixelSize: sp(16)
                    //   anchors.top: ipLabel.bottom
                }

                AppTextField {
                    id: rightText
                    Layout.preferredWidth: dp(200)
                    showClearButton: true
                    font.pixelSize: sp(14)
                    borderColor: Theme.tintColor
                    borderWidth: !Theme.isAndroid ? dp(2) : 0
                    //    anchors.top: ipText.bottom
                    placeholderText: "Your right turn command"
                }
            }

            FloatingActionButton {
                id: submitButton
                icon: IconType.checkcircle

            }


        }

    }

}

