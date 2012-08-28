# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/SuperTeam/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/SuperTeam/configs/devices_gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/crespo

# Setup device specific product configuration.
PRODUCT_NAME := osr_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.1/JRO03E/403059:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.1.1 JRO03E 403059 release-keys" BUILD_NUMBER=403059

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/SuperTeam/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
