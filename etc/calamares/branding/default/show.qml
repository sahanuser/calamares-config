/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 8000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background
            source: "squid.png"
            width: 720; height: 300
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        Image {
            id: background
            source: "slide1.png"
            width: 720; height: 300
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        } 
   }

    Slide {
       Text {

            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "Welcome to Aster Linux <br/>"+
                "This Distro is still in development appimage funcationality isn't been developed yet!<br/>"+
                "it will be available soon as it finished.For more information visit github page<br/>"+
		        "<html><style type="text/css"></style><a href="https://github.com/asterlinux">google</a></html>"
        	    onLinkActivated: Qt.openUrlExternally(link)
        	    MouseArea {
            		id: mouseArea
            		anchors.fill: parent
            		cursorShape: Qt.PointingHandCursor
            		wrapMode: Text.WordWrap
            		width: presentation.width
            		horizontalAlignment: Text.Center
        		}
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
