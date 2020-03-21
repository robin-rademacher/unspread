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

    Image {
        id: image
        x: 108
        y: 199
        width: 250
        height: 300
        fillMode: Image.PreserveAspectFit
        source: "src/img/Edgar_Pinowski.png"
    }

    Text {
        id: element
        x: 451
        y: 285
        color: "#ffffff"
        text: qsTr("Christian Dorsten, beratender Virologe <br>'In China wurde ein neues Virus entdeckt, welches sich dort <br>in großer Geschwindigkeit ausbreitet. Virologen warnen vor <br>einer weltweiten Pandemie und raten den Ländern sich darauf <br>vorzubereiten.'")
        font.pixelSize: 15
    }

    Button {
        id: button
        x: 451
        y: 400
        text: qsTr("Weiter")


    }
}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:400}
}
##^##*/
