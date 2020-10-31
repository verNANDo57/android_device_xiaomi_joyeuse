# Audio
persist.vendor.audio.hac.enable=false
persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24
ro.audio.monitorRotation=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
vendor.camera.aux.packageblacklist=com.discord \
persist.camera.HAL3.enabled=1 \
vendor.camera.aux.packagelist=org.lineageos.snap,com.android.camera,com.google.android.GoogleCamera \
vendor.camera.aux.packagelist2=com.google.android.GoogleCameraWide,com.dual.GCam,com.Wide.GCam,com.Tele.GCam \
vendor.camera.hal1.packagelist=com.whatsapp \
persist.camera.dual.camera=0 \
persist.camera.eis.enable=1

#Date Fixes
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.delta_time.enable=true \
persist.delta_time.enable=true

# Default sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Ganymede.ogg \
    ro.config.notification_sound=Carme.ogg \
    ro.config.alarm_alert=Argon.ogg

# gesture navigation as default
ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

#touch improvements
PRODUCT_PROPERTY_OVERRIDES += \
	touch.pressure.scale=0.001 \
	persist.sys.ui.hw=1 \
	view.scroll_friction=10 \
	touch.size.calibration=diameter \
	touch.size.scale=1 \
	touch.size.bias=0 \
	touch.size.isSummed=0 \
	touch.pressure.scale=0.001 \
	touch.orientation.calibration=none \
	touch.distance.calibration=none \
	touch.distance.scale=0 \
	touch.coverage.calibration=box \
	touch.gestureMode=spots \
	MultitouchSettleInterval=1ms \
	MultitouchMinDistance=1px \
	TapInterval=1ms \
	TapSlop=1px

#Recorder
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.hw=1 \
    debug.hwui.renderer=skiagl \
    debug.cpurend.vsync=false \
    vendor.gralloc.disable_ubwc=0 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# Netflix
ro.netflix.bsp_rev=Q6250-17263-1
