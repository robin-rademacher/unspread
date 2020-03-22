import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

Rectangle {
    width: 1080
    height: 720
    color: "#000000"

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

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


        //popoup close

        Popup {
            id: popupclose
            x: 500
            y: 330
            width: 80
            height: 60
            topInset: 0
            leftInset: 0
            padding: 0
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

            Button{
                id: popupbackbutton
                x: 0
                y: 0
                width: 80
                height: 60
                highlighted: true
                Universal.accent: Universal.Crimson
                text: qsTr("Beenden?")
                font.pointSize: 8
                onClicked: {
                    loader.setSource("menu.qml")
                }
            }
        }

//Dialog Measures
        Dialog {
            id: measures
            title: "Maßnahmen"
            standardButtons: Dialog.Close
            modal: false
            Text {
                id: dialogmeasures
                text: qsTr("Hallo Ich bin ein Dialog")
            }
            Button{
                id: measure1
                x: 0
                y: 0
                width: 60
                height: 40
                text: "Grenzkontrolle"
            }
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


            //Buttons
            RoundButton {
                id: govbutton
                x: 420
                y: 329
                width: 35
                height: 35
                onClicked: {
                //------------------------------------------------------Open Measures
                    measures.open()
                }
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
                onClicked: {
                //------------------------------------------------------Open Statistics

                }
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
                onClicked: {
                //------------------------------------------------------Close Harbor Function
                }
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
                onClicked: {
                //------------------------------------------------------Close Aiport Function
                }
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
                onClicked: {
                //------------------------------------------------------Close Aiport Function
                }
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
            height: 45
            highlighted: true
            Universal.accent: Universal.Mauve
            onClicked: {
            //------------------------------------------------------Time Pause Function
            }
            Image {
                id: pause
                source: "../assets/images/Pause-Button.png"
                mipmap: true
                x:0
                y:0
                width: 45
                height: 45
            }
        }

        Button {
            id: playbutton
            x: 85
            y: 658
            width: 45
            height: 45
            highlighted: true
            Universal.accent: Universal.Mauve
            onClicked: {
            //------------------------------------------------------Time Play Function
            }
            Image {
                id: play
                source: "../assets/images/Play_Button.png"
                mipmap: true
                x:0
                y:0
                width: 45
                height: 45
            }
        }
        Button {
            id: fastforwardbutton
            x: 145
            y: 658
            width: 45
            height: 45
            highlighted: true
            Universal.accent: Universal.Mauve
            onClicked: {
            //------------------------------------------------------Time FastForward Function
            }
            Image {
                id: ff
                source: "../assets/images/FastForward-Button.png"
                mipmap: true
                x:0
                y:0
                width: 45
                height: 45
            }
        }

// right Navigation with Factors

        Rectangle {
            id: factornav
            x: 754
            y: 0
            width: 327
            height: 721
            color: "#464646"


// Factor 1:
            Text {
                id: textfactor1
                x: 22
                y: 38
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("Reagentien")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor1
                x: 120
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
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }

// Factor 2
            Text {
                id: textfactor2
                x: 22
                y: 82
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("Schutzkleidung")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor2
                x: 120
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
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }
// Factor 3
            Text {
                id: textfactor3
                x: 22
                y: 126
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("med. Personal")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor3
                x: 120
                y: 117
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor3
                x: 270
                y: 114
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }

// Factor 4
            Text {
                id: textfactor4
                x: 22
                y: 170
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("Moral")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor4
                x: 120
                y: 161
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor4
                x: 270
                y: 158
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }

//Faktor 5
            Text {
                id: textfactor5
                x: 21
                y: 214
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("Spital Kapazität")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor5
                x: 120
                y: 205
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor5
                x: 270
                y: 202
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }

//Faktor 6
            Text {
                id: textfactor6
                x: 22
                y: 258
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("Sicherheit")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor6
                x: 120
                y: 249
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor6
                x: 270
                y: 246
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }


//Faktor 7
            Text {
                id: textfactor7
                x: 22
                y: 302
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("Beliebtheit")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor7
                x: 120
                y: 293
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor7
                x: 270
                y: 290
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }

//Faktor 8
            Text {
                id: textfactor8
                x: 22
                y: 346
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("öffentliche Ruhe")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor8
                x: 120
                y: 337
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor8
                x: 270
                y: 334
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }

//Faktor 9
            Text {
                id: textfactor9
                x: 22
                y: 390
                width: 57
                height: 23
                color: "#ffffff"
                text: qsTr("soziale Distanz")
                font.pixelSize: 12
            }

            Slider {
                id: sliderfactor9
                x: 120
                y: 381
                width: 146
                height: 32
                value: 0.5
                enabled: false
            }

            Image {
                id: imagefactor9
                x: 270
                y: 378
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/neutron_neutron.png"
            }



            //end rectangle
        }
    }

    RoundButton {
        x: 1032
        y: 672
        width: 34
        height: 34
        opacity: 1
        visible: true
        onClicked: popupclose.open()
        Image {
            id: logo
            x: 0
            y: 0
            source: "../assets/images/logo.png"
            width: 34
            height: 34
            mipmap: true
        }
    }
}
