TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
# Release data
TARGET_NO_LIVEWALLPAPERS := true
TARGET_BOOTANIMATION_NAME := 720

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := INSIGNIA 5

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/INSIGNIA/INSIGNIA/device_INSIGNIA.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := INSIGNIA
PRODUCT_NAME := cm_INSIGNIA
PRODUCT_BRAND := INSIGNIA
PRODUCT_MODEL := INSIGNIA 5
PRODUCT_MANUFACTURER := INSIGNIA

# Get the long list of APNs
PRODUCT_COPY_FILES := device/INSIGNIA/INSIGNIA/apns-full-conf.xml:system/etc/apns-conf.xml

# gps.conf
PRODUCT_COPY_FILES := device/INSIGNIA/INSIGNIA/gps.conf:system/etc/gps.conf

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)
