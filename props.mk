# Camera
PRODUCT_PROPERTY_OVERRIDES += \
     vendor.camera.aux.packageblacklist=com.discord \
     persist.camera.HAL3.enabled=1 \
     vendor.camera.aux.packagelist=org.lineageos.snap,com.android.camera,com.google.android.GoogleCamera \
     vendor.camera.aux.packagelist2=com.google.android.GoogleCameraWide,com.dual.GCam,com.Wide.GCam,com.Tele.GCam \
     vendor.camera.hal1.packagelist=com.whatsapp \
     persist.camera.dual.camera=0

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1
