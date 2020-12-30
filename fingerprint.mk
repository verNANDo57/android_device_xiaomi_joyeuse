# Fingerprint (Spoof)
PRODUCT_PROPERTY_OVERRIDES += \
   ro.product.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

VENDOR_PROPERTY_OVERRIDES += \
   ro.vendor.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys \
   ro.bootimage.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

ODM_PROPERTY_OVERRIDES += \
   ro.odm.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

SYSTEM_PROPERTY_OVERRIDES += \
   ro.system.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys \
   ro.build.fingerprint=Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

BUILD_FINGERPRINT := Redmi/joyeuse_global/joyeuse:10/QKQ1.191215.002/V12.0.1.0.QJZMIXM:user/release-keys

# Match security patch prop values to make fingerprint working
SYSTEM_PROPERTY_OVERRIDES += \
   ro.build.version.security_patch=2020-10-05

VENDOR_PROPERTY_OVERRIDES += \
   ro.vendor.build.security_patch=2020-10-05
