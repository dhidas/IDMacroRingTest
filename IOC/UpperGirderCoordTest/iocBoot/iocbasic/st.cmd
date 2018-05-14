#!../../bin/linux-x86_64/basic

## You may have to change basic to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}


# Set epics env variables
epicsEnvSet("ENGINEER", "Dean Andrew Hidas is not an engineer. <dhidas@bnl.gov>")
epicsEnvSet("PMACUTIL", "/usr/share/epics-pmacutil-dev")
#epicsEnvSet("PMAC1_IP", "192.168.1.102:1025")
epicsEnvSet("PMAC1_IP", "192.168.1.103:1025")
epicsEnvSet("sys", "ID")
epicsEnvSet("dev", "Test")
epicsEnvSet ("STREAM_PROTOCOL_PATH", "${TOP}/protocols")


## Register all support components
dbLoadDatabase "dbd/basic.dbd"
basic_registerRecordDeviceDriver pdbbase



pmacAsynIPConfigure("P0", $(PMAC1_IP))
pmacCreateController("PMAC1", "P0", 0, 9, 50, 500)

# GeoBrick PMAC co-ordinate systems
#
# PMAC1CS2 Upper Girder position microns

# Create CS (ControllerPort, Addr, CSNumber, CSRef, Prog)
pmacAsynCoordCreate("P0", 0, 2, 0, 1)

# Configure CS (PortName, DriverName, CSRef, NAxes)
drvAsynMotorConfigure("PMAC1CS2", "pmacAsynCoord", 0, 9)

# Set scale factor (CS_Ref, axis, stepsPerUnit)
pmacSetCoordStepsPerUnit(0, 6, 200000.0)

# Set Idle and Moving poll periods (CS_Ref, PeriodMilliSeconds)
pmacSetCoordIdlePollPeriod(0, 500)
pmacSetCoordMovingPollPeriod(0, 100)


dbLoadRecords("db/basic.db","SYS=$(sys),DEV=$(dev),PORT=P0")
dbLoadRecords("db/pmacStatus.db","SYS=$(sys),PMAC=$(dev),VERSION=1,PLC=5,NAXES=1,PORT=P0")
dbLoadRecords("db/pmac_asyn_motor.db","SYS=$(sys),DEV={$(dev)-Mtr1},ADDR=1,SPORT=P0,DESC=asd,PREC=5,EGU=cts")
dbLoadRecords("db/asynRecord.db","P=$(sys),R={$(dev)},ADDR=1,PORT=P0,IMAX=128,OMAX=128")






cd ${TOP}/iocBoot/${IOC}
iocInit
