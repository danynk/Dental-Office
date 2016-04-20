TEMPLATE = app

SOURCES += \
    main.cpp

isEmpty(BUILD_DATE) {

  equals(TEMPLATE, "app"){
    unix:DEFINES += BUILD_DATE='"\\\"$(shell date %F)\\\""'
    win32:DEFINES += BUILD_DATE='"\\\"$${system(date /t)}\\\""'
  }
}

message("QMake DEFINE:" $${DEFINES})
