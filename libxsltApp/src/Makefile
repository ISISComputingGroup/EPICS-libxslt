TOP=../..

include $(TOP)/configure/CONFIG

#ifneq ($(findstring windows,$(EPICS_HOST_ARCH)),)

ifneq ($(findstring debug,$(EPICS_HOST_ARCH)),)
CDEBUG=yes
ifeq ($(STATIC_BUILD),YES)
CRUNTIME=/MTd /DEPICS_DLL_NO
else
CRUNTIME=/MDd /DEPICS_BUILD_DLL 
endif
else
CDEBUG=no
ifeq ($(STATIC_BUILD),YES)
CRUNTIME=/MT /DEPICS_DLL_NO
else
CRUNTIME=/MD /DEPICS_BUILD_DLL
endif
endif
USE_ZLIB=yes

include $(TOP)/configure/RULES

ifdef T_A
install:
	$(MAKE) -C $(TOP)/libxslt-1.1.28/win32 -f Makefile.epics install T_A=$(T_A) CDEBUG=$(CDEBUG) CRUNTIME="$(CRUNTIME)" USE_ZLIB=$(USE_ZLIB) TOP=$(LIBXSLT)
endif

ifeq ($(BASE_3_14),YES)
clean:: myclean
else
clean: myclean
endif

myclean:
	$(MAKE) -C $(TOP)/libxslt-1.1.28/win32 -f Makefile.epics clean

uninstall:
