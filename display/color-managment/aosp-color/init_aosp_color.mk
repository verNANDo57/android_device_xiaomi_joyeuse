#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-aosp-color

# Props
SYSTEM_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=0

VENDOR_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=0 \
    vendor.display.qdcm.mode_combine=1