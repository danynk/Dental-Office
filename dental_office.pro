TEMPLATE = app

SOURCES += \
    main.cpp

DEFINES += BUILD_DATE='"\\\"$${system(date /t +%F)}\\\""'

message("QMake DEFINE:" $${DEFINES})
