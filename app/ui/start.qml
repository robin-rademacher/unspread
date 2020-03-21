import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

ApplicationWindow {
    id: window
    width: 1080
    height: 720
    color: "#000000"
    visible: true
    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    Grid {
        id: grid
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        rows: 5
        columns: 5
        anchors.fill: parent

//        Slider {
//           id: slider
//            value: 0.5
//        }
    }

    //Image Christian Dorsten

    Image {
        id: image
        x: 108
        y: 199
        width: 250
        height: 300
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Edgar_Pinowski.png"
    }

    //inital welcome Text

    Text {
        id: welcometext
        x: 451
        y: 285
        color: "#ffffff"
        text: qsTr("Christian Dorsten, beratender Virologe <br>'In China wurde ein neues Virus entdeckt, welches sich dort <br>in großer Geschwindigkeit ausbreitet. Virologen warnen vor <br>einer weltweiten Pandemie und raten den Ländern sich darauf <br>vorzubereiten.'")
        font.pixelSize: 15
    }


    Text {
        id: introductiontext
        x: 451
        y: 285
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
        y: 400
        text: qsTr("Weiter")



        states: State {
                    name: "change"; when: continuebutton.pressed == true
                    PropertyChanges { target: welcometext; visible: false }
                    PropertyChanges { target: introductiontext; visible: true }
                }

    }

    //replace Text: Introduction


}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:400}
}
##^##*/
