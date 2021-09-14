# =========== Color Managment =========== #

CURRENT_LOCATION := device/xiaomi/joyeuse/display/color-management

# Set boolean value here
# Depends on rom you try to build
PRODUCT_USE_LINEAGE_COLOR_MANAGMENT = true

# Init
ifeq ($(PRODUCT_USE_LINEAGE_COLOR_MANAGMENT),true)
include $(CURRENT_LOCATION)/lineage-color/init_lineage_color.mk
else
include $(CURRENT_LOCATION)/aosp-color/init_aosp_color.mk
endif
