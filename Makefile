THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 10000

export ARCHS = arm64 arm64e
TARGET = iphone:16.5

include $(THEOS)/makefiles/common.mk

RotateWall_CFLAGS = -fobjc-arc
CCFLAGS += -std=c++11

TWEAK_NAME = WebKitDebug

WebKitDebug_FILES = Tweak.x
WebKitDebug_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"