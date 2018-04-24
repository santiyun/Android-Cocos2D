APP_STL := c++_static

APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -fsigned-char -std=c++11
APP_LDFLAGS := -latomic

APP_CFLAGS += -Wno-error=format-security -fexceptions

APP_PLATFORM := android-27

APP_ABI := armeabi-v7a

NDK_TOOLCHAIN_VERSION := clang

ifeq ($(NDK_DEBUG),1)
  APP_CPPFLAGS += -DCOCOS2D_DEBUG=1
  APP_OPTIM := debug
else
  APP_CPPFLAGS += -DNDEBUG
  APP_OPTIM := release
endif
