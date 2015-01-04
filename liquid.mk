# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flounder
PRODUCT_NAME := liquid_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := htc
PRODUCT_RESTRICT_VENDOR_FILES := false
