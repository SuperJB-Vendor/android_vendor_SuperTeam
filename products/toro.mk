# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/SuperTeam/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := osr_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

PRODUCT_COPY_FILES += \
    vendor/SuperTeam/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/SuperTeam/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
