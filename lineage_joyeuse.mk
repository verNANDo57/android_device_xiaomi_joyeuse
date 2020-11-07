#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

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

TARGET_VENDOR_PRODUCT_NAME := joyeuse

BUILD_FINGERPRINT :="google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys" 

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="joyeuse-user 10 QKQ1.191215.002/V12.0.1.0.QJZMIXM release-keys"
