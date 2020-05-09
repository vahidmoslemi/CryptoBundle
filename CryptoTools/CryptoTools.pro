CONFIG -= qt

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    bcrypt/src/bcrypt.c \
    bcrypt/src/crypt_blowfish.c \
    bcrypt/src/crypt_gensalt.c \
    bcrypt/src/wrapper.c \
    bytearray.cpp \
    cryptotools.cpp

HEADERS += \
    bcrypt/include/bcrypt/BCrypt.hpp \
    bcrypt/include/bcrypt/bcrypt.h \
    bcrypt/include/bcrypt/crypt.h \
    bcrypt/include/bcrypt/crypt_blowfish.h \
    bcrypt/include/bcrypt/crypt_gensalt.h \
    bcrypt/include/bcrypt/ow-crypt.h \
    bcrypt/include/bcrypt/winbcrypt.h \
    bcrypt/src/x86.S \
    bytearray.h \
    cryptotools.h

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    bcrypt/README.md


INCLUDEPATH += "bcrypt/include/bcrypt"
DESTDIR = ../lib