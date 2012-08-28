$(call inherit-product, $(LOCAL_PATH)/common.mk)

$(call inherit-product, $(LOCAL_PATH)/optional_livewallpapers.mk)

# Bring in all New audio files
include frameworks/base/data/sounds/NewAudio.mk
# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk
