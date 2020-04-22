import Felgo 3.0
//import QtQuick 2.0
import QtQuick 2.11
import QtQuick.Layouts 1.1


Page {

    id: page2
    title: qsTr("Controller")

    GridLayout {
        id: grid2
        columns: 3
        rows: 3
        Layout.alignment: Qt.AlignHCenter

        AppButton {
            horizontalPadding: 0
            minimumWidth: 75
            Layout.topMargin: 65
            id: up
            Layout.column: 1
            Layout.row: 0
            text: qsTr("UP")
            flat: false
        }

        AppButton {
            horizontalPadding: 0
            minimumWidth: 75
            Layout.column: 0
            Layout.row: 1
            Layout.leftMargin: 25
            text: qsTr("LEFT")
            flat: false
        }

         AppButton {
             horizontalPadding: 0
             minimumWidth: 75
            Layout.column: 2
            Layout.row: 1
            text: qsTr("RIGHT")
            flat: false
        }

         AppButton {
             horizontalPadding: 0
             minimumWidth: 75
            Layout.column: 1
            Layout.row: 2
            text: qsTr("BACK")
            flat: false
        }


    }

    FloatingActionButton {
        backgroundColor: "red"
    }

    FloatingActionButton {
        backgroundColor: "green"
//        anchors.left: parent.left
        anchors.rightMargin: 275
        anchors.leftMargin: 10
        anchors.bottomMargin: 125
        icon: IconType.plus
    }

    FloatingActionButton {
        id: inc
        backgroundColor: "green"
//        anchors.left: parent.left
        anchors.rightMargin: 275
        anchors.leftMargin: 10
        icon: IconType.minus
    }





}


