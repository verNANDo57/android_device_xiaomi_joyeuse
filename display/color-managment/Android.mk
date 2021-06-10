LOCAL_PATH := $(call my-dir)

ifeq ($(PRODUCT_USE_LINEAGE_COLOR_MANAGMENT),TRUE)
	$(call inherit-product, $(LOCAL_PATH)/lineage-color/init_lineage_color.mk)
else
	$(call inherit-product, $(LOCAL_PATH)/aosp-color/init_aosp_color.mk)
endif