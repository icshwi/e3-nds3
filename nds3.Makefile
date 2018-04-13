
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

APPSRC:=src
APPINC:=include

# # WHY $(APPINC) DONT WORK???
# USR_INCLUDES += -I$(where_am_I)$(APPINC)/nds3
# USR_INCLUDES += -I$(where_am_I)$(APPINC)/nds3impl



USR_CXXFLAGS += -std=c++0x
#USR_CXXFLAGS += -fvisibility=hidden
#USR_CXXFLAGS += -fvisibility-inlines-hidden
#USR_CXXFLAGS += -DNDS3_DLL
#USR_CXXFLAGS += -DNDS3_DLL_EXPORTS
USR_CXXFLAGS += -Iinclude

# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable


HEADERS += $(wildcard $(APPINC)/nds3/*.h)
HEADERS += $(wildcard $(APPINC)/nds3impl/*.h)
SOURCES += $(wildcard $(APPSRC)/*.cpp)


# db rule is the default in RULES_E3, so add the empty one

db:
