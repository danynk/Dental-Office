TEMPLATE = app

SOURCES += \
    main.cpp

isEmpty(BUILD_DATE) {
message("No build date set. Setting now...")
    unix:BUILD_DATE='"\\\"$(shell date %F)\\\""'
    win32:BUILD_DATE='"\\\"$${system(date /t)}\\\""'
}

DEFINES += BUILD_DATE=$${BUILD_DATE}

message("QMake DEFINE:" $${DEFINES})
