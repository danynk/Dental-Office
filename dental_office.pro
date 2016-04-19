TEMPLATE = app

SOURCES += \
    main.cpp

DEFINES += BUILD_DATE='"\\\"$${system(date /t +%F)}\\\""'
DEFINES += BUILD_DATE_v2='"\\\"$(shell date +%F)\\\""'

message("QMake DEFINE:" $${DEFINES})
