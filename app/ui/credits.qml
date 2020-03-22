import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14
Rectangle {
    width: 1080
    height: 720
    color: "#000000"

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

        //Logo
        Image {
            id: logo
            x: 100
            y: 339
            width: 150
            height: 150
            mipmap: true
            fillMode: Image.PreserveAspectFit
            source: "../assets/images/logo.png"
        }
        // Title
        Text {
            id: title
            x: 274
            y: 372
            color: "#ffffff"
            text: qsTr("unspread")
            font.pixelSize: 70
        }




        //New Game button

        Button {
            id: creditsbutton
            x: 967
            y: 14
            width: 100
            height: 58
            text: qsTr("back")
            font.pointSize: 24
            onClicked: {
                loader.setSource("menu.qml")
            }
        }

        Text {
            id: credits
            x: 100
            y: 142
            color: "#ffffff"
            text: qsTr("credits")
            font.pixelSize: 70
        }

        Text {
            id: text1
            x: 100
            y: 243
            color: "#ffffff"
            text: qsTr("Entstanden im Rahmen des #WirVsWirus Hackaton März 2020")
            font.pixelSize: 20
        }

        Text {
            id: text2
            x: 274
            y: 485
            color: "#ffffff"
            text: qsTr("Team:<br>Matthias Ngo<br>Robin Rademacher<br>Antonia Mann<br>Melchior Mann")
            font.pixelSize: 20
        }
    }
