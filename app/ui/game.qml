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


    }

    // Map

    Image {
        id: image
        x: -30
        y: 0
        width: 875
        height: 586
        fillMode: Image.PreserveAspectFit
        source: "src/img/Karte_Porollos.png"
    }

    // right Navigation with factors

    Rectangle {
        id: rectangle
        x: 805
        y: 0
        width: 328
        height: 723
        color: "#464646"


    // Factor 1:
        Text {
            id: textfactor1
            x: 22
            y: 38
            width: 57
            height: 23
            color: "#ffffff"
            text: qsTr("Faktor 1")
            font.pixelSize: 12
        }

        Slider {
            id: sliderfactor1
            x: 102
            y: 29
            width: 146
            height: 32
            enabled: false
            value: 0.5
        }

        Image { //Icon that shows development of Factor (increasing, stagnates,...)
            id: imagefactor1
            x: 270
            y: 26
            width: 36
            height: 38
            fillMode: Image.PreserveAspectFit
            source: "qrc:/qtquickplugin/images/template_image.png"
        }
    }


    // Time and Time Control

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
        id: pausebutton
        x: 25
        y: 664
        //source:
    }
    Button {
        id: playbutton
        x: 25
        y: 664
        //source:
    }
    Button {
        id: fastforwardbutton
        x: 25
        y: 664
        //source:
    }



}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:400}
}
##^##*/
