#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : han.lee@esss.se
# Date    : Friday, September 14 15:18:47 CEST 2018
# version : 0.0.1
#

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS


APPSRC:=src
APPINC:=include

# # WHY $(APPINC) DONT WORK???
USR_INCLUDES += -I$(where_am_I)$(APPINC)/nds3
USR_INCLUDES += -I$(where_am_I)$(APPINC)/nds3impl



USR_CXXFLAGS += -std=c++0x
#USR_CXXFLAGS += -fvisibility=hidden
#USR_CXXFLAGS += -fvisibility-inlines-hidden
#USR_CXXFLAGS += -DNDS3_DLL
#USR_CXXFLAGS += -DNDS3_DLL_EXPORTS
#USR_CXXFLAGS += -Iinclude

# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable


HEADERS += $(wildcard $(APPINC)/nds3/*.h)
HEADERS += $(wildcard $(APPINC)/nds3impl/*.h)

#SOURCES += $(wildcard $(APPSRC)/*.cpp)
SOURCES += $(APPSRC)/base.cpp
SOURCES += $(APPSRC)/dataAcquisition.cpp
SOURCES += $(APPSRC)/exceptions.cpp
SOURCES += $(APPSRC)/factory.cpp
SOURCES += $(APPSRC)/iniFileParser.cpp
SOURCES += $(APPSRC)/node.cpp
SOURCES += $(APPSRC)/port.cpp
SOURCES += $(APPSRC)/pvBase.cpp
SOURCES += $(APPSRC)/pvBaseIn.cpp
SOURCES += $(APPSRC)/pvBaseOut.cpp
SOURCES += $(APPSRC)/pvDelegateIn.cpp
SOURCES += $(APPSRC)/pvDelegateOut.cpp
SOURCES += $(APPSRC)/pvVariableIn.cpp
SOURCES += $(APPSRC)/pvVariableOut.cpp
SOURCES += $(APPSRC)/stateMachine.cpp
SOURCES += $(APPSRC)/thread.cpp
SOURCES += $(APPSRC)/threadStd.cpp

SOURCES += $(APPSRC)/baseImpl.cpp
SOURCES += $(APPSRC)/iniFileParserImpl.cpp
SOURCES += $(APPSRC)/ndsFactoryImpl.cpp
SOURCES += $(APPSRC)/pvBaseImpl.cpp
SOURCES += $(APPSRC)/pvDelegateInImpl.cpp
SOURCES += $(APPSRC)/pvVariableOutImpl.cpp

SOURCES += $(APPSRC)/dataAcquisitionImpl.cpp
SOURCES += $(APPSRC)/interfaceBaseImpl.cpp
SOURCES += $(APPSRC)/nodeImpl.cpp
SOURCES += $(APPSRC)/pvBaseInImpl.cpp
SOURCES += $(APPSRC)/pvDelegateOutImpl.cpp
SOURCES += $(APPSRC)/stateMachineImpl.cpp
SOURCES += $(APPSRC)/threadBaseImpl.cpp
SOURCES += $(APPSRC)/factoryBaseImpl.cpp
SOURCES += $(APPSRC)/logStreamGetterImpl.cpp
SOURCES += $(APPSRC)/portImpl.cpp
SOURCES += $(APPSRC)/pvBaseOutImpl.cpp
SOURCES += $(APPSRC)/pvVariableInImpl.cpp
#SOURCES += $(APPSRC)/tangoInterfaceImpl.cpp
#SOURCES += $(APPSRC)/tangoFactoryImpl.cpp




# db rule is the default in RULES_E3, so add the empty one

db:
#
.PHONY: vlibs
vlibs:
#
