
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

APP:=nds3
APPSRC:=src
APPINC:=include

USR_CXXFLAGS += -std=c++0x
USR_CXXFLAGS += -fvisibility=hidden
USR_CXXFLAGS += -fvisibility-inlines-hidden
USR_CXXFLAGS += -DNDS3_DLL
USR_CXXFLAGS += -DNDS3_DLL_EXPORTS

USR_CXXFLAGS += -Iinclude

# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable

#HEADERS_PREFIX = nds3/
HEADERS  = $(wildcard $(APPINC)/nds3/*.h)
HEADERS += $(wildcard $(APPINC)/nds3impl/*.h)

SOURCES = $(wildcard $(APPSRC)/*.cpp)


