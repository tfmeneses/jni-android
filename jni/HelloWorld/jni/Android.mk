LOCAL_PATH := $(call my-dir)
#LOCAL_PATH := $(call my-dir)_'

include $(CLEAR_VARS)
# APP_PLATFORM := android-22
#include $(ANDROID_NDK "/sources/cxx-stl/gnu-libstdc++/4.9/include")

APP_PROJECT_PATH := $(call my-dir)

APP_STL := stlport_static
# APP_MODULES := abc xyz
# APP_CFLAGS += -fno-rtti -fexceptions
APP_ABI := armeabi-v7a
# NDK_TOOLCHAIN := armeabi-v7a

# TARGET_PLATFORM := android-22
# ANDROID_TARGET_ARCH=armeabi-v7a



LOCAL_C_INCLUDES := $(ANDROID_NDK)/sources/cxx-stl/
LOCAL_MODULE := mynative
LOCAL_SRC_FILES := ../main.cpp ../jni_entry.cpp
APP_PLATFORM := android-22

include $(BUILD_SHARED_LIBRARY)
