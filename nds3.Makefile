
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

APP:=nds3
#APPDB:=$(APP)/Db
APPSRC:=$(where_am_I)/src
APPINC:=$(where_am_I)/include	


#USR_INCLUDES += -I$(where_am_I)/$(APPSRC)
USR_INCLUDES += -I$(where_am_I)/$(APPINC)

USR_CPPFLAGS += -std=c++0x -fvisibility=hidden -fvisibility-inlines-hidden -DNDS3_DLL -DNDS3_DLL_EXPORTS
# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable

# TEMPLATES += $(wildcard $(APPDB)/*.db)

# DBDINC_SRCS += $(APPSRC)/swaitRecord.c
# DBDINC_SRCS += $(APPSRC)/sseqRecord.c
# DBDINC_SRCS += $(APPSRC)/aCalcoutRecord.c
# DBDINC_SRCS += $(APPSRC)/sCalcoutRecord.c
# DBDINC_SRCS += $(APPSRC)/transformRecord.c

# DBDINC_DBDS = $(subst .c,.dbd,   $(DBDINC_SRCS:$(APPSRC)/%=%))
# DBDINC_HDRS = $(subst .c,.h,     $(DBDINC_SRCS:$(APPSRC)/%=%))
# DBDINC_DEPS = $(subst .c,$(DEP), $(DBDINC_SRCS:$(APPSRC)/%=%))


# HEADERS_PREFIX = nds3/
# HEADERS  = $(wildcard $(where_am_I)/$(APPINC)/nds3/*.h)
# HEADERS += $(wildcard $(where_am_I)/$(APPINC)/nds3impl/*.h)


SOURCES += $(where_am_I)/src/base.cpp
SOURCES += $(where_am_I)/src/baseImpl.cpp
SOURCES += $(where_am_I)/src/dataAcquisition.cpp
SOURCES += $(where_am_I)/src/dataAcquisitionImpl.cpp
SOURCES += $(where_am_I)/src/exceptions.cpp
SOURCES += $(where_am_I)/src/factoryBaseImpl.cpp
SOURCES += $(where_am_I)/src/factory.cpp
SOURCES += $(where_am_I)/src/iniFileParser.cpp
SOURCES += $(where_am_I)/src/iniFileParserImpl.cpp
SOURCES += $(where_am_I)/src/interfaceBaseImpl.cpp
SOURCES += $(where_am_I)/src/logStreamGetterImpl.cpp
SOURCES += $(where_am_I)/src/ndsFactoryImpl.cpp
SOURCES += $(where_am_I)/src/node.cpp
SOURCES += $(where_am_I)/src/nodeImpl.cpp
SOURCES += $(where_am_I)/src/port.cpp
SOURCES += $(where_am_I)/src/portImpl.cpp
SOURCES += $(where_am_I)/src/pvBase.cpp
SOURCES += $(where_am_I)/src/pvBaseImpl.cpp
SOURCES += $(where_am_I)/src/pvBaseIn.cpp
SOURCES += $(where_am_I)/src/pvBaseInImpl.cpp
SOURCES += $(where_am_I)/src/pvBaseOut.cpp
SOURCES += $(where_am_I)/src/pvBaseOutImpl.cpp
SOURCES += $(where_am_I)/src/pvDelegateIn.cpp
SOURCES += $(where_am_I)/src/pvDelegateInImpl.cpp
SOURCES += $(where_am_I)/src/pvDelegateOut.cpp
SOURCES += $(where_am_I)/src/pvDelegateOutImpl.cpp
SOURCES += $(where_am_I)/src/pvVariableIn.cpp
SOURCES += $(where_am_I)/src/pvVariableInImpl.cpp
SOURCES += $(where_am_I)/src/pvVariableOut.cpp
SOURCES += $(where_am_I)/src/pvVariableOutImpl.cpp
SOURCES += $(where_am_I)/src/stateMachine.cpp
SOURCES += $(where_am_I)/src/stateMachineImpl.cpp
SOURCES += $(where_am_I)/src/tangoFactoryImpl.cpp
SOURCES += $(where_am_I)/src/tangoInterfaceImpl.cpp
SOURCES += $(where_am_I)/src/threadBaseImpl.cpp
SOURCES += $(where_am_I)/src/thread.cpp
SOURCES += $(where_am_I)/src/threadStd.cpp

# SOURCES += $(APPSRC)/calcUtil.c
# SOURCES += $(APPSRC)/myFreeListLib.c
# SOURCES += $(APPSRC)/devsCalcoutSoft.c
# SOURCES += $(APPSRC)/devaCalcoutSoft.c
# SOURCES += $(APPSRC)/subAve.c
# SOURCES += $(APPSRC)/swaitRecord.c
# SOURCES += $(APPSRC)/editSseq.st
# SOURCES += $(APPSRC)/interp.c
# SOURCES += $(APPSRC)/arrayTest.c
# SOURCES += $(APPSRC)/aCalcMonitorMem.c
# # DBDINC_SRCS should be last of the series of SOURCES
# SOURCES += $(DBDINC_SRCS)

# DBDS += $(APPSRC)/calcSupport_LOCAL.dbd
# DBDS += $(APPSRC)/calcSupport_withSNCSEQ.dbd
# DBDS += $(APPSRC)/calcSupport_withSSCAN.dbd


# $(DBDINC_DEPS): $(DBDINC_HDRS)

# .dbd.h:
# 	$(DBTORECORDTYPEH)  $(USR_DBDFLAGS) -o tsclib $<


# The following lines could be useful if one uses the external lib
#
# Examples...
# 
# USR_CFLAGS += -fPIC
# USR_CFLAGS   += -DDEBUG_PRINT
# USR_CPPFLAGS += -DDEBUG_PRINT
# USR_CPPFLAGS += -DUSE_TYPED_RSET
# USR_INCLUDES += -I/usr/include/libusb-1.0
# USR_LDFLAGS += -lusb-1.0
# USR_LDFLAGS += -L /opt/etherlab/lib
# USR_LDFLAGS += -lethercat
# USR_LDFLAGS += -Wl,-rpath=/opt/etherlab/lib
#


