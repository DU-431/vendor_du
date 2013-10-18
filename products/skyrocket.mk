# Inherit AOSP device configuration for skyrocket.
$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/du/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/skyrocket

# Setup device specific product configuration.
PRODUCT_NAME := du_skyrocket
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := skyrocket
PRODUCT_MODEL := SGH-I727
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.3/IMM76D/UCMC1:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.3 IMM76D UCMC1 release-keys"
# boot animation
PRODUCT_COPY_FILES += \
	vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
