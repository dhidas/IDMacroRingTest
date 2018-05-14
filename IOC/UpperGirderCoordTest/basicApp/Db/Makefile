TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this

DB_INSTALLS += basic.db
DB_INSTALLS += motor.db

DB_INSTALLS += $(EPICS_BASE)/db/pmacStatus.db
DB_INSTALLS += $(EPICS_BASE)/db/pmacStatusAxis.db
DB_INSTALLS += $(EPICS_BASE)/db/pmac_asyn_motor.db
DB_INSTALLS += $(EPICS_BASE)/db/motorstatus.db
DB_INSTALLS += $(EPICS_BASE)/db/asynRecord.db
DB_INSTALLS += $(EPICS_BASE)/db/iocAdminSoft.db
DB_INSTALLS += $(EPICS_BASE)/db/asynRecord.db


#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

