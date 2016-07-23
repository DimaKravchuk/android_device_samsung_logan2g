# Release name
PRODUCT_RELEASE_NAME := GT-S7262

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/logan2g/device_logan2g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := logan2g
PRODUCT_NAME := cm_logan2g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7260
PRODUCT_CHARACTERISTICS := phone
