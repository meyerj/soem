#******************************************************************************
#                *          ***                    ***
#              ***          ***                    ***
# ***  ****  **********     ***        *****       ***  ****          *****
# *********  **********     ***      *********     ************     *********
# ****         ***          ***              ***   ***       ****   ***
# ***          ***  ******  ***      ***********   ***        ****   *****
# ***          ***  ******  ***    *************   ***        ****      *****
# ***          ****         ****   ***       ***   ***       ****          ***
# ***           *******      ***** **************  *************    *********
# ***             *****        ***   *******   **  **  ******         *****
#                           t h e  r e a l t i m e  t a r g e t  e x p e r t s
#
# http://www.rt-labs.com
# Copyright (C) 2006. rt-labs AB, Sweden. All rights reserved.
#------------------------------------------------------------------------------
# $Id: files.mk 125 2012-04-01 17:36:17Z rtlaka $
#------------------------------------------------------------------------------

S_SRC ?= $(wildcard *.S)
C_SRC ?= $(wildcard *.c)
CPP_SRC ?= $(wildcard *.cpp)

S_OBJS := $(patsubst %.S,%.o,$(S_SRC))
C_OBJS := $(patsubst %.c,%.o,$(C_SRC))
CPP_OBJS := $(patsubst %.cpp,%.o,$(CPP_SRC))

OBJS := $(S_OBJS) $(C_OBJS) $(CPP_OBJS) $(TT_OBJS)
OBJDIR_OBJS = $(patsubst %,$(OBJDIR)/%,$(OBJS))
DEPENDS := $(patsubst %.o,%.d,$(OBJDIR_OBJS))
