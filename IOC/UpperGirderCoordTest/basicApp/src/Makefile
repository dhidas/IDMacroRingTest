TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library


# basic.dbd will be made up of these files
basic_DBD += base.dbd
basic_DBD += asyn.dbd
basic_DBD += motorSupport.dbd
basic_DBD += drvAsynIPPort.dbd
basic_DBD += drvAsynSerialPort.dbd
basic_DBD += pmacAsynMotorPort.dbd
basic_DBD += pmacAsynMotor.dbd
basic_DBD += pmacAsynIPPort.dbd
basic_DBD += pmacAsynCoord.dbd
basic_DBD += asSupport.dbd
basic_DBD += busySupport.dbd
basic_DBD += calcSupport.dbd
basic_DBD += system.dbd
basic_DBD += stream.dbd
basic_DBD += devIocStats.dbd





# Libraries
basic_LIBS += pmacAsynMotorPort
basic_LIBS += pmacAsynIPPort
basic_LIBS += pmacAsynCoord
basic_LIBS += motor
basic_LIBS += asyn
basic_LIBS += autosave
basic_LIBS += busy
basic_LIBS += calc
basic_LIBS += stream
basic_LIBS += devIocStats
basic_LIBS += pmacAsynMotor





basicSupport_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================
# Build the IOC application

PROD_IOC = basic
# basic.dbd will be created and installed
DBD += basic.dbd

# basic_registerRecordDeviceDriver.cpp derives from basic.dbd
basic_SRCS += basic_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
basic_SRCS_DEFAULT += basicMain.cpp


# Finally link to the EPICS Base libraries
basic_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

