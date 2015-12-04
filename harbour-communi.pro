TEMPLATE = subdirs
SUBDIRS += src
!no_submodules {
    !exists(src/shared/shared.pri)|!exists(src/backend/src/src.pro): \
        error(A Git submodule is missing. Run \'git submodule update --init\' in the project root.)
}

OTHER_FILES += \
    qml/*.qml \
    qml/cover/*.qml \
    qml/dialogs/*.qml \
    qml/settings/*.qml \
    qml/view/*.qml \
    rpm/harbour-communi.spec \
    translations/* \
    src/app/harbour-communi.desktop \
    src/app/harbour-communi.png \
    README.md

CONFIG += sailfishapp_i18n

TRANSLATIONS +=  translations/harbour-communi-zh_CN.ts
