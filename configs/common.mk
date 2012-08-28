$(call inherit-product-if-exists, vendor/SuperTeam/prebuilt/prebuilts.mk)

#SuperOSR'squisher
TARGET_CUSTOM_RELEASETOOL := ./vendor/SuperTeam/tools/squisher

include device/common/gps/gps_eu_supl.mk
include vendor/SuperTeam/products/common_base_audio.mk

#Skip test
LIBCORE_SKIP_TESTS := true
BLUEZ_SKIP_TESTS := true
SKIA_SKIP_TESTS := true

TEAM_PRODUCT := SuperOSR
TEAM_NAME := ST
PRODUCT_VERSION_DEVICE_SPECIFIC := $(TARGET_PRODUCT)-SuperOSR-JellyBean
PRODUCT_VERSION_MAJOR := 1
PRODUCT_VERSION_MINOR := 4

PRODUCT_TAGS += dalvik.gc.type-precise

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/common

# T-Mobile theme engine
include vendor/SuperTeam/configs/themes_common.mk

PRODUCT_PACKAGES += \
    AndroidTerm \
    Apollo \
    AppWidgetPicker \
    Basic \
    Camera \
    FileExplorer \
    LatinIME \
    LatinImeDictionary \
    Launcher2 \
    Microbes \
    MusicFX \
    MusicVisualization \
    NoiseField \
    Notes \
    openvpn \
    Otarootkeeper \
    PhaseBeam \
    ROMControl \
    SoundRecorder2 \
    SpareParts \
    SuperSU \
    SwagPapers \
    UnicornPorn \
    VideoEditor \
    VoiceDialer \
    Wallpapers

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/SuperTeam/prebuilt/common/xbin/su:system/xbin/su

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    ro.opengles.version=131072 \
    wifi.supplicant_scan_interval=60 \
    ro.mod.version=$(TEAM_PRODUCT) \
    ro.superteam.version=$(PRODUCT_ROM_FILE) \
    ro.build.romversion=$(PRODUCT_ROM_FILE) \
    ro.rommanager.developerid=supermvl \
    keyguard.no_require_sim=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false \
    ro.sup.superteam \

PRODUCT_COPY_FILES += \
    vendor/SuperTeam/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/SuperTeam/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/SuperTeam/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/SuperTeam/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/SuperTeam/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/SuperTeam/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/SuperTeam/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.alarm_alert=Scandium.ogg
    ro.config.ringtone=Terminated.ogg \
    ro.config.notification_sound=Howl.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml



ifeq ($(WITH_GOOGLE),true)
	$(call inherit-product, vendor/google/essencial.mk)
endif

ifeq ($(WITH_GOOGLE_MINIMAL),true)
	$(call inherit-product, vendor/google/minimal.mk)
endif

ifeq ($(WITH_GOOGLE_FULL),true)
	$(call inherit-product, vendor/google/full.mk)
endif

ifeq ($(WITH_FACELOCK),true)
	$(call inherit-product, vendor/google/products/facelock_support.mk)
endif

# Inherit common build.prop overrides
-include vendor/SuperTeam/configs/common_versions.mk
