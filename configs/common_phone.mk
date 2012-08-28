$(call inherit-product, build/target/product/base_telephony.mk)
$(call inherit-product, vendor/SuperTeam/configs/common.mk)
$(call inherit-product, vendor/SuperTeam/configs/devices_gsm.mk)

PRODUCT_PACKAGES += \
    NovaLauncher

# Inherit drm blobs
-include vendor/SuperTeam/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
