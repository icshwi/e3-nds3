
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

APP:=nds3
APPSRC:=src
APPINC:=include

# WHY $(APPINC) DONT WORK???
USR_INCLUDES += -I$(APPINC)/nds3
USR_INCLUDES += -I$(APPINC)/nds3impl


USR_CXXFLAGS += -std=c++0x -fvisibility=hidden -fvisibility-inlines-hidden -DNDS3_DLL -DNDS3_DLL_EXPORTS
# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable

HEADERS_PREFIX = nds3/
HEADERS  = $(wildcard $(APPINC)/nds3/*.h)
HEADERS += $(wildcard $(APPINC)/nds3impl/*.h)

SOURCES = $(wildcard $(APPSRC)/*.cpp)

