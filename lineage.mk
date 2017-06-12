## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := lt023g

# Inherit device configuration
$(call inherit-product, device/samsung/lt023g/device_lt023g.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lt023g
PRODUCT_NAME := lineage_lt023g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T211
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    sys.recovery_done=1
