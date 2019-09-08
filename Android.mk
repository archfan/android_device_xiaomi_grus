#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2019 0x61
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(grus, $(TARGET_DEVICE)),)
   subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
   $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
endif
