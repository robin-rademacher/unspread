import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

Rectangle {
    width: 1080
    height: 720
    color: "#000000"

Item {
//DEBUG REC
    Rectangle{

        id: debugrec
        x: 361
        y: 604
        width: 118
        height: 99
        color: "#d53232"
        visible: false
    }

//DEBUG REC END





    // Map

    Image {
        id: image
        x: -30
        y: 0
        width: 875
        height: 586
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Karte_Porollos.png"


        //Buttons
        RoundButton {
            id: govbutton
            x: 420
            y: 329
            width: 35
            height: 35
            text: ""
            Image {
                id: govbuttonimage
                x: 0
                y: 0
                width: 35
                height: 35
                source: "../assets/images/Regierung-Button.png"
                mipmap: true
            }
            visible: true

            states: State {
                        name: "down"; when: govbutton.pressed == true
                        PropertyChanges { target: debugrec; visible: true }
                    }

        }

        RoundButton {
            id: statisticbutton
            x: 420
            y: 232
            width: 35
            height: 35
            text: ""
            Image {
                id: statisticbuttonimage
                x: 0
                y: 0
                width: 35
                height: 35
                source: "../assets/images/Börse-Button.png"
                mipmap: true
            }
            visible: true

            states: State {
                        name: "down"; when: statisticbutton.pressed == true
                        PropertyChanges { target: debugrec; visible: true }
                    }

        }

        RoundButton {
            id: harborbutton
            x: 279
            y: 306
            width: 35
            height: 35
            text: ""
            Image {
                id: harborbuttonimage
                x: 0
                y: 0
                width: 35
                height: 35
                source: "../assets/images/Anker-Button.png"
                mipmap: true
            }
            visible: true

            states: State {
                        name: "down"; when: harborbutton.pressed == true
                        PropertyChanges { target: debugrec; visible: true }
                    }
        }

        RoundButton {
            id: airport1button
            x: 557
            y: 188
            width: 35
            height: 35
            text: ""
            Image {
                id: airport1buttonimage
                x: 0
                y: 0
                width: 35
                height: 35
                source: "../assets/images/Flugzeug-Button.png"
                mipmap: true
            }
            visible: true

            states: State {
                        name: "down"; when: airport1button.pressed == true
                        PropertyChanges { target: debugrec; visible: true }
                    }

        }

        RoundButton {
            id: airport2button
            x: 443
            y: 416
            width: 35
            height: 35
            Image {
                id: airport2buttonimage
                x: 0
                y: 0
                width: 35
                height: 35
                source: "../assets/images/Flugzeug-Button.png"
                mipmap: true
            }
            visible: true

            states: State {
                        name: "down"; when: airport2button.pressed == true
                        PropertyChanges { target: debugrec; visible: true }
                    }
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
        x: 754
        y: 0
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
}
