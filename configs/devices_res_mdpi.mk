# of course
PRODUCT_LOCALES := mdpi

# Specific mdpi files
PRODUCT_COPY_FILES += \
	vendor/SuperTeam/prebuilt/bootanimation.mdpi.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/mdpi
