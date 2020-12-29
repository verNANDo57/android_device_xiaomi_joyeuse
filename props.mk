# Audio
persist.vendor.audio.hac.enable=false
persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24
ro.audio.monitorRotation=true

# ADB props
ro.secure=1 
ro.debuggable=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
     vendor.camera.aux.packageblacklist=com.discord \
     persist.camera.HAL3.enabled=1 \
     vendor.camera.aux.packagelist=org.lineageos.snap,com.android.camera,com.google.android.GoogleCamera \
     vendor.camera.aux.packagelist2=com.google.android.GoogleCameraWide,com.dual.GCam,com.Wide.GCam,com.Tele.GCam \
     vendor.camera.hal1.packagelist=com.whatsapp \
     persist.camera.dual.camera=0 \
     persist.camera.eis.enable=1

#Recorder
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.hw=1 \
    debug.hwui.renderer=skiagl \
    debug.cpurend.vsync=false \
    vendor.gralloc.disable_ubwc=0 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# Fingerprint (Spoof)
PRODUCT_PROPERTY_OVERRIDES += \
   ro.product.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

VENDOR_PROPERTY_OVERRIDES += \
   ro.vendor.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys \
   ro.bootimage.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

ODM_PROPERTY_OVERRIDES += \
   ro.odm.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

SYSTEM_PROPERTY_OVERRIDES += \
   ro.system.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

BUILD_FINGERPRINT := Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys
