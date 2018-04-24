LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := ttt-rtc-wrapper
LOCAL_SRC_FILES := ../../../TTTRtcEngineVoice/libs/Android/$(TARGET_ARCH_ABI)/libMySdkWrapper.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d-x)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d-x/external)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d-x/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d-x/cocos/audio/include)

LOCAL_MODULE := MyGame_shared

LOCAL_MODULE_FILENAME := libMyGame

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes \
                    $(LOCAL_PATH)/../../../TTTRtcEngineVoice/include

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../../Classes/AppDelegate.cpp \
                   ../../../Classes/HelloCocosScene.cpp \
                   ../../../Classes/HomeScene.cpp \
                   ../../../Classes/TTTUserControl.cpp

LOCAL_STATIC_LIBRARIES := cocos2dx_static

LOCAL_SHARED_LIBRARIES := ttt-rtc-wrapper
include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
