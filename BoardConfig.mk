#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2019 0x61
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm710-common
-include device/xiaomi/sdm710-common/BoardConfigCommon.mk

BOARD_VENDOR := xiaomi

DEVICE_PATH := device/xiaomi/grus

# Kernel
TARGET_KERNEL_CONFIG := grus_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := grus

# HIDL
# DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event2"

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# Inherit from the proprietary stuffs
#-include vendor/xiaomi/grus/BoardConfigVendor.mk