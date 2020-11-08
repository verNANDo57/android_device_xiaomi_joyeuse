#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
$(call inherit-product, device/xiaomi/sm6250-common/common.mk)

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/joyeuse/joyeuse-vendor.mk)

# Inherit props.mk
$(call inherit-product, $(LOCAL_PATH)/props.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.device.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.device.rc

# NFC
PRODUCT_SOONG_NAMESPACES += \
    vendor/nxp/opensource/pn5xx

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    com.nxp.nfc.nq \
    libnqnfc_nci_jni \
    nfc_nci.nqx.default.hw \
    NQNfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    Tag \
    vendor.nxp.hardware.nfc@1.2-service

PRODUCT_PACKAGES += \
    nfc_nci.nqx.default.hw \
    vendor.nxp.hardware.nfc@1.2-service

PRODUCT_PACKAGES += \
    nqnfcee_access.xml \
    nqnfcse_access.xml

PRODUCT_PRODUCT_PROPERTIES += \
    ro.nfc.port=I2C

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/libnfc-nxp_RF.conf \
    $(LOCAL_PATH)/nfc/libpn553_fw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpn553_fw.so \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_joyeuse/com.nxp.mifare.xml

# Secure element
PRODUCT_PACKAGES += \
    SecureElement

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd937x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd937x.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd937x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd937x.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal-engine-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map-joyeuse.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal-joyeuse.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera-joyeuse.conf
