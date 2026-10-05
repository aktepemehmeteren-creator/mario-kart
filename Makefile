TARGET = MarioKartPSP
OBJS = main.o

CFLAGS = -O2 -G0 -Wall -fno-strict-aliasing -fsingle-precision-constant
ASFLAGS = $(CFLAGS)

LIBS = -lpspgum -lpspgu -lpspctrl -lpspdisplay -lpspge -lm

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = Mario Kart PSP
PSP_EBOOT_SFO = PARAM.SFO
PSP_EBOOT_ICON =

PSPSDK = $(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
