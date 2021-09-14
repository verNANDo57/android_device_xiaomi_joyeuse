#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

CURRENT_LOCATION := device/xiaomi/joyeuse/display/color-management/aosp-color

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(CURRENT_LOCATION)/overlay-aosp-color

# Props
VENDOR_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=0 \
    vendor.display.qdcm.mode_combine=1
