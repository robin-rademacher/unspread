import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14
Rectangle {
    width: 1080
    height: 720
    color: "#131313"

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet


        //Logo
        Image {
            id: logo
            x: 501
            y: 132
            width: 500
            height: 500
            mipmap: true
            fillMode: Image.PreserveAspectFit
            source: "../assets/images/logo.png"
        }

        Image {
            id: logotext
            x: 67
            y: 110
            width: 586
            height: 127
            fillMode: Image.PreserveAspectFit
            source: "../assets/images/logotext.png"
            mipmap: true
        }

        // Title




        //New Game button

        Button {
            id: newgamebutton
            x: 100
            y: 302
            width: 250
            height: 58
            text: qsTr("Neues Spiel")
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
