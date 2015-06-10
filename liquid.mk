# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Inherit some common Liquid stuff.
ifneq ($(FLOUNDER_LTE),1)
$(call inherit-product, vendor/liquid/config/common_tablet_lte.mk)
else
$(call inherit-product, vendor/liquid/config/common_tablet_wifionly.mk)
endif

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder64.mk)

## Device identifier. This must come after all inclusions
ifneq ($(FLOUNDER_LTE),1)
PRODUCT_DEVICE := flounder_lte
else
PRODUCT_DEVICE := flounder
endif

PRODUCT_NAME := liquid_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := htc
PRODUCT_RESTRICT_VENDOR_FILES := false
