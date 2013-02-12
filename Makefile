export TARGET=iphone:clang

include theos/makefiles/common.mk

TWEAK_NAME = Tallscreen
Tallscreen_FILES = Tweak.x

include $(THEOS_MAKE_PATH)/tweak.mk
