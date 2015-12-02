# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-lookingglass

CONFIG += sailfishapp

SOURCES += src/harbour-lookingglass.cpp


appicons.path = /usr/share/icons/hicolor
appicons.files = appicons/*
INSTALLS += appicons

OTHER_FILES += qml/harbour-lookingglass.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/harbour-lookingglass.changes.in \
    rpm/harbour-lookingglass.spec \
    rpm/harbour-lookingglass.yaml \
    translations/*.ts \
    harbour-lookingglass.desktop \
    qml/pages/Glass.qml \
    appicons/86x86/apps/harbour-lookingglass.png \
    appicons/108x108/apps/harbour-lookingglass.png \
    appicons/128x128/apps/harbour-lookingglass.png \
    appicons/256x256/apps/harbour-lookingglass.png

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/harbour-lookingglass-de.ts

