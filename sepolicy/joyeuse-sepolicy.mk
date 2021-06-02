include device/qcom/sepolicy_vndr/SEPolicy.mk

# TODO: BOARD_PLAT_* DIRS ONLY KEPT FOR COMPATIBILITY REASONS. WILL BE A HARD ERROR ON API LEVEL 31
# SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
#     device/xiaomi/joyeuse/sepolicy/private
# SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
#     device/xiaomi/joyeuse/sepolicy/public
# BOARD_VENDOR_SEPOLICY_DIRS += \
#     device/xiaomi/joyeuse/sepolicy/vendor

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/xiaomi/joyeuse/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/xiaomi/joyeuse/sepolicy/public
BOARD_SEPOLICY_DIRS += device/xiaomi/joyeuse/sepolicy/vendor