# Camera
PRODUCT_PROPERTY_OVERRIDES += \
     persist.camera.HAL3.enabled=1 \
     persist.camera.dual.camera=0

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1
