import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14
Rectangle {
    width: 1080
    height: 720
    color: "#0c0c0c"

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




    //New Game button

    Button {
        id: creditsbutton
        x: 1040
        y: 0
        width: 40
        height: 40
        font.pointSize: 24
        background: "0c0c0c"
        onClicked: {
            loader.setSource("menu.qml")
        }
        Image {
            id: closeicon
            source: "../assets/images/Back.png"
            mipmap: true
            x:0
            y:0
            width: 40
            height: 40
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
        text: qsTr("Entstanden im Rahmen des #WirVsVirus Hackathon März 2020")
        font.pixelSize: 20
    }

    Text {
        id: text2
        x: 278
        y: 515
        color: "#ffffff"
        text: qsTr("Matthias Ngo - Lead Designer <br>Robin Rademacher - Lead Programmer<br>Antonia Mann - Lead Expert<br>Melchior Mann - Creative Director")
        font.pixelSize: 20
    }

    Image {
        id: logotext
        x: 228
        y: 369
        width: 454
        height: 91
        mipmap: true
        source: "../assets/images/logotext.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image
        x: 670
        y: 325
        width: 340
        height: 180
        source: "../assets/images/logo_hackathon.svg"
        mipmap: true
        fillMode: Image.PreserveAspectFit
    }

}
