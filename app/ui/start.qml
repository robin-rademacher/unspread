import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

Rectangle {
    width: 1080
    height: 720
    color: "#000000"

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet


    //Image Christian Dorsten
    Image {
        id: imagedorsten
        x: 108
        y: 199
        width: 250
        height: 300
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Christian_Dorsten.png"
    }
    //initial welcome Text
    Text {
        id: welcometext
        x: 451
        y: 285
        color: "#ffffff"
        text: qsTr("Christian Dorsten, beratender Virologe <br><br>'In China wurde ein neues Virus entdeckt, welches sich dort <br>in großer Geschwindigkeit ausbreitet. Virologen warnen vor <br>einer weltweiten Pandemie und raten den Ländern sich darauf <br>vorzubereiten.'")
        font.pixelSize: 15
    }


    Text {
        id: introductiontext
        x: 451
        y: 323
        color: "#ffffff"
        text: qsTr("Als Regierung des Landes Parallos ist es Ihre Aufgabe die Ausbreitung <br>des Coronavirus im Land zu verhindern und einzudämmen.<br>Veranlassen Sie dazu eine Vielzahl von Maßnahmen.
                    <br>Achten Sie dabei aber auf die Auswirkungen der Faktoren")
        font.pixelSize: 15
        visible: false
    }



    //continue button

    Button {
        id: continuebutton
        x: 451
        y: 415
        text: qsTr("Weiter")
        onClicked: {
            if (state == "welcome") state = "introduction"
            else if (state == "introduction") loader.setSource("game.qml")
        }
        state: "welcome"
        states: [
            State {
                name: "welcome"
                PropertyChanges { target: welcometext; visible: true }
                PropertyChanges { target: introductiontext; visible: false }
            },
            State {
                name: "introduction";
                PropertyChanges { target: welcometext; visible: false }
                PropertyChanges { target: introductiontext; visible: true }
                PropertyChanges { target: imagedorsten; visible: false }
            }
        ]

    }
}
