#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# =========== Vibrator =========== #

CURRENT_LOCATION := device/xiaomi/joyeuse/vibrator

PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service.xiaomi_joyeuse

PRODUCT_COPY_FILES += \
    $(CURRENT_LOCATION)/etc/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml
