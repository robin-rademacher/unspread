import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Universal 2.14

Rectangle {
    id: rectangle
    width: 1080
    height: 720
    color: "#4c4c4c"

    Universal.theme: Universal.Dark

    Item {
        Timer {
            id: timer
            interval: 1000
            repeat: true
            running: false
            onTriggered: {
                day.text = parseInt(day.text) + 1
                app.update()
                sliderfactor1.value = app.getFactor("reagents")
                sliderfactor2.value = app.getFactor("protective_clothing")
                sliderfactor3.value = app.getFactor("medical_personnel")
                sliderfactor4.value = app.getFactor("morale")
                sliderfactor5.value = app.getFactor("capacity_hospitals")
                sliderfactor6.value = app.getFactor("safety")
                sliderfactor7.value = app.getFactor("popularity")
                sliderfactor8.value = app.getFactor("tranquility")
                sliderfactor9.value = app.getFactor("distance")
                alivenumber.text = app.getPeopleAlive()
                healthynumber.text = app.getPeopleHealthy()
                infectednumber.text = app.getPeopleInfected()
                deadnumber.text = app.getPeopleDead()
                immunenumber.text = app.getPeopleImmune()
                stockindex.text = app.getStockIndex()
            }
        }

        //popup close
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
        Popup{
            id: popupmeasures
            x: 20
            y: 20
            topInset: 0
            leftInset: 0
            padding: 0
            modal: true
            focus: true
            Loader { source: "measures.qml" }
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
                    //------------------------------------------------------Open Measures + Pause Game (missing)
                    popupmeasures.open()
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


            }

            RoundButton {
                id: harborbutton
                x: 279
                y: 306
                width: 35
                height: 35
                onClicked: {
                    //------------------------------------------------------Close Harbor Function
                    app.execute("close_port")
                    if (state == "closed") state = "open"
                    else if (state == "open") state = "closed"

                }

                state: "open"
                states: [
                    State {
                        name: "open"
                        PropertyChanges { target: cancelthing; visible: false }
                    },
                    State {
                        name: "closed";
                        PropertyChanges { target: cancelthing; visible: true }
                    }
                ]

                Image {
                    id: cancelthing
                    source: "../assets/images/Cancel_Thing.png"
                    x:0
                    y:0
                    width:35
                    height: 35
                    mipmap: true
                    z:1
                    visible: false
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
            }

            RoundButton {
                id: airport1button
                x: 557
                y: 188
                width: 35
                height: 35
                onClicked: {
                    //------------------------------------------------------Close Airport1 Function
                    app.execute("close_airport1")
                    if (state == "closed") state = "open"
                    else if (state == "open") state = "closed"
                }

                state: "open"
                states: [
                    State {
                        name: "open"
                        PropertyChanges { target: cancelthing1; visible: false }
                    },
                    State {
                        name: "closed";
                        PropertyChanges { target: cancelthing1; visible: true }
                    }
                ]

                Image {
                    id: cancelthing1
                    source: "../assets/images/Cancel_Thing.png"
                    x:0
                    y:0
                    width:35
                    height: 35
                    mipmap: true
                    z:1
                    visible: false
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

            }

            RoundButton {
                id: airport2button
                x: 443
                y: 416
                width: 35
                height: 35
                onClicked: {
                    //------------------------------------------------------Close Airport2 Function
                    app.execute("close_airport2")
                    if (state == "closed") state = "open"
                    else if (state == "open") state = "closed"

                }

                state: "open"
                states: [
                    State {
                        name: "open"
                        PropertyChanges { target: cancelthing2; visible: false }
                    },
                    State {
                        name: "closed";
                        PropertyChanges { target: cancelthing2; visible: true }
                    }
                ]

                Image {
                    id: cancelthing2
                    source: "../assets/images/Cancel_Thing.png"
                    x:0
                    y:0
                    width:35
                    height: 35
                    mipmap: true
                    z:1
                    visible: false
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

            }
        }


        // Time and Time Control

        Text {
            id: dayLabel
            color: "#ffffff"
            x: 25
            y: 618
            width: 45
            height: 34
            text: qsTr("Tag")
            font.pixelSize: 25
        }

        Button {
            id: pausebutton
            x: 25
            y: 658
            width: 45
            height: 45
            highlighted: true
            Universal.accent: Universal.Steel
            onClicked: {
                //------------------------------------------------------Time Pause Function
                if (state == "pause") {
                    state = "play"
                    timer.stop()
                }
                else if (state == "play") {
                    state = "pause"
                    timer.start()
                }
            }
            state: "play"
            states: [
                State {
                    name: "play"
                    PropertyChanges { target: playimg; visible: true }
                    PropertyChanges { target: pauseimg; visible: false }
                    PropertyChanges { target: pausebutton; Universal.accent: Universal.Steel }
                },
                State {
                    name: "pause";
                    PropertyChanges { target: playimg; visible: false }
                    PropertyChanges { target: pauseimg; visible: true }
                    PropertyChanges { target: pausebutton; Universal.accent: Universal.Green }
                }
            ]

            Image {
                id: playimg
                source: "../assets/images/Play_Button.png"
                mipmap: true
                x:0
                y:0
                width: 45
                height: 45
            }
            Image {
                visible: false
                id: pauseimg
                source: "../assets/images/Pause-Button.png"
                mipmap: true
                x:0
                y:0
                width: 45
                height: 45
            }
        }


        Button {
            id: fastforwardbutton
            x: 90
            y: 658
            width: 45
            height: 45
            highlighted: true
            Universal.accent: Universal.Steel
            onClicked: {
                //------------------------------------------------------Time FastForward Function
                if (state == "normal") {
                    state = "fast"
                    timer.interval = 500
                } else {
                    state = "normal"
                    timer.interval = 1000
                }
            }
            state: "normal"
            states: [
                State {
                    name: "normal"
                    PropertyChanges { target: fastforwardbutton; Universal.accent: Universal.Steel }
                },
                State {
                    name: "fast";
                    PropertyChanges { target: fastforwardbutton; Universal.accent: Universal.Green }
                }
            ]
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
                value: app.getFactor("reagents")
            }

            Image { //Icon that shows development of Factor (increasing, stagnates,...)
                id: imagefactor1
                x: 270
                y: 26
                width: 38
                height: 38
                fillMode: Image.PreserveAspectFit
                mipmap: true
                source: "../assets/images/down_down.png"
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
                value: app.getFactor("protective_clothing")
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
                source: "../assets/images/up_up.png"
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
                value: app.getFactor("medical_personnel")
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
                value: app.getFactor("morale")
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
                value: app.getFactor("capacity_hospitals")
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
                value: app.getFactor("safety")
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
                value: app.getFactor("popularity")
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
                value: app.getFactor("tranquility")
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
                value: app.getFactor("distance")
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
        x: 14
        y: 15
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

    Text {
        id: day
        x: 90
        y: 619
        width: 41
        height: 28
        color: "#ffffff"
        text: qsTr("1")
        font.pixelSize: 25
    }

    Image {
        id: advisor
        x: 756
        y: 449
        width: 194
        height: 198
        mipmap: true
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Christian_Dorsten.png"

        Text {
            id: advisorname
            x: 138
            y: 19
            color: "#ffffff"
            text: qsTr("Christian Dorsten, Virologe")
            font.italic: true
            font.pixelSize: 15
        }

        Text {
            id: advisortext
            x: 8
            y: 202
            color: "#ffffff"
            text: qsTr("''Kitas schließen ist keine Option. Ich <br>bevorzuge die österreichische Lösung''")
            font.pixelSize: 15
        }

        Image {
            id: advisorsymbol
            x: 276
            y: 43
            width: 40
            height: 40
            source: "../assets/images/Virus_Kawaii.png"
            fillMode: Image.PreserveAspectFit
            mipmap: true
        }

    }

    Image {
        id: alive
        x: 200
        y: 632
        width: 40
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Alive.png"
    }

    Label {
        id: alivenumber
        x: 246
        y: 645
        color: "#ffffff"
        text: app.getPeopleAlive()
    }


    Image {
        id: healthy
        x: 328
        y: 606
        width: 40
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Healthy.png"
    }

    Label {
        id: healthynumber
        x: 374
        y: 619
        color: "#ffffff"
        text: app.getPeopleHealthy()
    }

    Image {
        id: infected
        x: 459
        y: 606
        width: 40
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Infected.png"
    }

    Label {
        id: infectednumber
        x: 505
        y: 619
        color: "#ffffff"
        text: app.getPeopleInfected()
    }

    Image {
        id: dead
        x: 459
        y: 652
        width: 40
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Dead.png"
    }

    Label {
        id: deadnumber
        x: 505
        y: 665
        color: "#ffffff"
        text: app.getPeopleDead()
    }

    Image {
        id: immune
        x: 328
        y: 652
        width: 40
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Immune.png"
    }

    Label {
        id: immunenumber
        x: 381
        y: 665
        color: "#ffffff"
        text: app.getPeopleImmune()
    }

    Image {
        id: stock
        x: 583
        y: 632
        width: 40
        height: 40
        fillMode: Image.PreserveAspectFit
        source: "../assets/images/Börse-Button.png"
    }

    Label {
        id: stockindex
        x: 629
        y: 645
        color: "#ffffff"
        text: app.getStockIndex()
    }

}
