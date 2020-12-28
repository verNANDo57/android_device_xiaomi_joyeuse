#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
include device/xiaomi/sm6250-common/BoardConfigCommon.mk

# Inherit the proprietary files
-include vendor/xiaomi/joyeuse/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/joyeuse

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := atoll

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_miatoll
TARGET_RECOVERY_DEVICE_MODULES := libinit_miatoll

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Kernel
TARGET_KERNEL_CONFIG := joyeuse_defconfig

SELINUX_IGNORE_NEVERALLOWS := true

# HIDL
ODM_MANIFEST_SKUS += \
    joyeuse

ODM_MANIFEST_JOYEUSE_FILES := $(DEVICE_PATH)/manifest_joyeuse.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE := joyeuse
