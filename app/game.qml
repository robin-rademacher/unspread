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
        x: 0
        y: 0
        width: 875
        height: 586
        fillMode: Image.PreserveAspectFit
        source: "src/img/Karte_Porollos.png"


    }
    Text {
        id: clock
        color: "#ffffff"
        x: 25
        y: 618
        width: 85
        height: 25
        text: qsTr("00:00:00")
        font.pixelSize: 20
    }


    Button {
        x: 25
        y: 664
        //source:
        text: "\u23F8" // Unicode Character 'Pause Button'
    }


    RoundButton {
        x: 163
        y: 664
        text: "\u23E9" // Unicode Character 'Pause Button'
        onClicked: textArea.readOnly = true
    }


}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:400}
}
##^##*/
