# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=1 \
    ro.secure=0 \
    ro.debuggable=1
