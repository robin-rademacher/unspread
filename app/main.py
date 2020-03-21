# -*- coding: utf-8 -*-

import sys

from PyQt5.QtWidgets import QApplication
from PyQt5.QtQuick import QQuickView
from PyQt5.QtCore import QUrl

if __name__ == "__main__":
    app = QApplication(sys.argv)
    view = QQuickView()
    url = QUrl("main.qml")
    view.setSource(url)
    view.show()
    
    sys.exit(app.exec_())
