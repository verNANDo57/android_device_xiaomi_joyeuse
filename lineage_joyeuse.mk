#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device specific configuration
$(call inherit-product, device/xiaomi/joyeuse/device.mk)

# Inherit some common Lineage OS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Sign with private key
PRODUCT_DEFAULT_DEV_CERTIFICATE := device/xiaomi/joyeuse/keys/releasekey

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := joyeuse
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_joyeuse
PRODUCT_MODEL := Redmi Note 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
