# Camera
PRODUCT_PROPERTY_OVERRIDES += \
     persist.camera.HAL3.enabled=1 \
     persist.camera.dual.camera=0

VENDOR_PROPERTY_OVERRIDES += \
     vendor.camera.aux.packageblacklist=com.discord \
     vendor.camera.aux.packagelist=org.lineageos.snap,com.google.android.GoogleCamera,com.android.camera \
     vendor.camera.aux.packagelist2=com.google.android.GoogleCameraWide,com.dual.GCam,com.Wide.GCam,com.Tele.GCam \
     vendor.camera.hal1.packagelist=com.whatsapp

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1
