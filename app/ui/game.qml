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
        anchors.bottomMargin: 6
        anchors.leftMargin: 0
        anchors.topMargin: -6
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
        source: "../assets/images/Karte_Porollos.png"


        //Button Gov - Treatments
        RoundButton {
            id: roundButton
            x: 420
            y: 329
            width: 35
            height: 33
            text: ""
            visible: false
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
        y: 658
        width: 45
        height: 40
        //source:
    }
    Button {
        id: playbutton
        x: 84
        y: 658
        width: 42
        height: 40
        //source:
    }
    Button {
        id: fastforwardbutton
        x: 140
        y: 658
        width: 42
        height: 40
        //source:
    }

    // right Navigation with factors

    Rectangle {
        id: factornav
        x: 804
        y: -3
        width: 328
        height: 732
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

    // Factor 2
        Text {
            id: textfactor2
            x: 22
            y: 82
            width: 57
            height: 23
            color: "#ffffff"
            text: qsTr("Faktor 2")
            font.pixelSize: 12
        }

        Slider {
            id: sliderfactor2
            x: 102
            y: 73
            width: 146
            height: 32
            value: 0.5
            enabled: false
        }

        Image {
            id: imagefactor2
            x: 270
            y: 70
            width: 36
            height: 38
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }
 // Factor 3
        Text {
            id: textfactor3
            x: 22
            y: 128
            width: 57
            height: 23
            color: "#ffffff"
            text: qsTr("Faktor 3")
            font.pixelSize: 12
        }

        Slider {
            id: sliderfactor3
            x: 102
            y: 119
            width: 146
            height: 32
            value: 0.5
            enabled: false
        }

        Image {
            id: imagefactor3
            x: 270
            y: 116
            width: 36
            height: 38
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }

 // Factor 4
        Text {
            id: textfactor4
            x: 22
            y: 172
            width: 57
            height: 23
            color: "#ffffff"
            text: qsTr("Faktor 4")
            font.pixelSize: 12
        }

        Slider {
            id: sliderfactor4
            x: 102
            y: 163
            width: 146
            height: 32
            value: 0.5
            enabled: false
        }

        Image {
            id: imagefactor4
            x: 270
            y: 160
            width: 36
            height: 38
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }




        //end rectangle
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:400}
}
##^##*/
