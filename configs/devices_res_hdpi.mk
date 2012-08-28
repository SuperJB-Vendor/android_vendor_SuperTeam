# of course
PRODUCT_LOCALES := hdpi

# Specific hdpi files
PRODUCT_COPY_FILES += \
	vendor/SuperTeam/prebuilt/bootanimation.hdpi.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/SuperTeam/overlay/hdpi
