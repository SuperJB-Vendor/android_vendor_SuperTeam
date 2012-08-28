# Version information used on all builds

DATE = $(shell date +%h-%d-%y)

BUILD_VERSION = $(shell date +%y-%m-%d)
BUILD_VERSION_REV = 1

DEV_NAME = SuperTeam
ROM_NAME = $(TARGET_PRODUCT)-SuperOSR-JellyBean


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRO03H BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

PRODUCT_PROPERTY_OVERRIDES += \
    ro.superteam.version=$(TARGET_PRODUCT)_JB-v$(BUILD_VERSION)
	#ro.superteam.version=$(TARGET_PRODUCT)_JB-v$(BUILD_VERSION)-rev$(BUILD_VERSION_REV)

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=$(DEV_NAME) \
    ro.goo.rom=$(ROM_NAME) \
    ro.goo.version=1

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
