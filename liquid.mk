#  Custom Changes

# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

# Inline kernel building
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel/htc/flounder
TARGET_KERNEL_CONFIG := flounder_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive

# Extra Packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras

## Device identifier. This must come after all inclusions
PRODUCT_NAME := liquid_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
