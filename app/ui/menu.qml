import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14
Rectangle {
    width: 1080
    height: 720
    color: "#000000"



        //Logo
        Image {
            id: logo
            x: 505
            y: 110
            width: 500
            height: 500
            mipmap: true
            fillMode: Image.PreserveAspectFit
            source: "../assets/images/logo.png"
        }
        // Title
        Text {
            id: title
            x: 100
            y: 142
            color: "#ffffff"
            text: qsTr("unspread")
            font.pixelSize: 70
        }




        //New Game button

        Button {
            id: newgamebutton
            x: 100
            y: 302
            width: 250
            height: 58
            text: qsTr("Neus Spiel")
            font.pointSize: 24
            onClicked: {
                loader.setSource("start.qml")
            }
        }

        Button {
            id: creditsbutton
            x: 100
            y: 404
            width: 250
            height: 58
            text: qsTr("Credits")
            font.pointSize: 24
            onClicked: {
                loader.setSource("credits.qml")
            }
        }
    }
