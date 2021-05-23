#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/joyeuse

BUILD_BROKEN_DUP_RULES := true

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
#AUDIO_FEATURE_ENABLED_AHAL_EXT := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
BOARD_SUPPORTS_QAHW := false
TARGET_USES_QCOM_MM_AUDIO := true

# Audio policy
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_USE_QTI_BT_STACK := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Build broken
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true

TARGET_LD_SHIM_LIBS := \
    system/lib/libcameraservice.so|libmedia_jni_shim.so

# Charger Mode
# We don't need this, cuz we already have defined ro.charger.enable_suspend=true in product,prop, but ok
BOARD_CHARGER_ENABLE_SUSPEND := true

# ConfigStore
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
TARGET_HAS_HDR_DISPLAY := true
TARGET_HAS_WIDE_COLOR_DISPLAY := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DPM
BOARD_USES_DPM := true

# Dex
WITH_DEXPREOPT_DEBUG_INFO := false
DONT_DEXPREOPT_PREBUILTS := true
USE_DEX2OAT_DEBUG := false

# CNE and DPM FIX ME
# BOARD_USES_QCNE := true

# Display
TARGET_SCREEN_DENSITY := 440
TARGET_USES_DISPLAY_RENDER_INTENTS := true

# Graphics
TARGET_DISABLE_POSTRENDER_CLEANUP := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_COLOR_METADATA := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAS_QCA_FM_SOC := cherokee
BOARD_HAVE_QCOM_FM := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000

BOARD_VENDOR_KERNEL_MODULES += \
   $(DEVICE_PATH)/kernel-modules/rmnet_perf.ko \
   $(DEVICE_PATH)/kernel-modules/rmnet_shs.ko \
   $(DEVICE_PATH)/kernel-modules/audio_adsp_loader.ko \
   $(DEVICE_PATH)/kernel-modules/audio_apr.ko \
   $(DEVICE_PATH)/kernel-modules/audio_bolero_cdc.ko \
   $(DEVICE_PATH)/kernel-modules/audio_hdmi.ko \
   $(DEVICE_PATH)/kernel-modules/audio_machine_atoll.ko \
   $(DEVICE_PATH)/kernel-modules/audio_mbhc.ko \
   $(DEVICE_PATH)/kernel-modules/audio_native.ko \
   $(DEVICE_PATH)/kernel-modules/audio_pinctrl_lpi.ko \
   $(DEVICE_PATH)/kernel-modules/audio_platform.ko \
   $(DEVICE_PATH)/kernel-modules/audio_q6.ko \
   $(DEVICE_PATH)/kernel-modules/audio_q6_notifier.ko \
   $(DEVICE_PATH)/kernel-modules/audio_q6_pdr.ko \
   $(DEVICE_PATH)/kernel-modules/audio_rx_macro.ko \
   $(DEVICE_PATH)/kernel-modules/audio_snd_event.ko \
   $(DEVICE_PATH)/kernel-modules/audio_stub.ko \
   $(DEVICE_PATH)/kernel-modules/audio_swr.ko \
   $(DEVICE_PATH)/kernel-modules/audio_swr_ctrl.ko \
   $(DEVICE_PATH)/kernel-modules/audio_tas2562.ko \
   $(DEVICE_PATH)/kernel-modules/audio_tx_macro.ko \
   $(DEVICE_PATH)/kernel-modules/audio_usf.ko \
   $(DEVICE_PATH)/kernel-modules/audio_va_macro.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wcd9xxx.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wcd937x.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wcd937x_slave.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wcd938x.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wcd938x_slave.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wcd_core.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wsa881x.ko \
   $(DEVICE_PATH)/kernel-modules/audio_wsa_macro.ko \
   $(DEVICE_PATH)/kernel-modules/br_netfilter.ko \
   $(DEVICE_PATH)/kernel-modules/exfat.ko \
   $(DEVICE_PATH)/kernel-modules/gspca_main.ko \
   $(DEVICE_PATH)/kernel-modules/lcd.ko \
   $(DEVICE_PATH)/kernel-modules/llcc_perfmon.ko \
   $(DEVICE_PATH)/kernel-modules/mpq-adapter.ko \
   $(DEVICE_PATH)/kernel-modules/mpq-dmx-hw-plugin.ko \
   $(DEVICE_PATH)/kernel-modules/msm_11ad_proxy.ko \
   $(DEVICE_PATH)/kernel-modules/qca_cld3_wlan.ko \
   $(DEVICE_PATH)/kernel-modules/rdbg.ko \
   $(DEVICE_PATH)/kernel-modules/wil6210.ko

BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

KERNEL_LD := LD=ld.lld
TARGET_KERNEL_ARCH := arm64

#GCC
#TARGET_NEW_GCC_COMPILE := true

TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := proton
TARGET_KERNEL_CONFIG := cust_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm6250
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-proton/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-gnu-
KERNEL_SUPPORTS_LLVM_TOOLS := true
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"

BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0xa88000
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.enabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += kpti=off

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifests/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/manifests/compatibility_matrix.xml

# Media
TARGET_DISABLED_UBWC := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SUPER_PARTITION_SIZE := 8589934592
BOARD_USERDATAIMAGE_PARTITION_SIZE := 112421842944

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 8589934592

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

ifeq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 104857600
else
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1887436800
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 104857600

TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

BOARD_USES_METADATA_PARTITION := true

BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_BOARD_PLATFORM := atoll

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
TARGET_USES_PRE_UPLINK_FEATURES_NETMGRD := true

# Sepolicy
include device/qcom/sepolicy_vndr/SEPolicy.mk

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Treble
PRODUCT_FULL_TREBLE := true
BOARD_VNDK_VERSION := current
PRODUCT_VENDOR_MOVE_ENABLED := true

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := atoll

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_joyeuse
TARGET_RECOVERY_DEVICE_MODULES := libinit_joyeuse

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Security patch level
VENDOR_SECURITY_PATCH := 2021-04-01

# HIDL
ODM_MANIFEST_SKUS += \
    joyeuse

ODM_MANIFEST_JOYEUSE_FILES := $(DEVICE_PATH)/configs/manifests/manifest_joyeuse.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE := joyeuse

# MiuiCamera
-include vendor/xiaomi/miuicamera/BoardConfigAnx.mk

# Inherit the proprietary files
-include vendor/xiaomi/joyeuse/BoardConfigVendor.mk
