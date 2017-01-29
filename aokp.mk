# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from chagalllte device
$(call inherit-product, device/samsung/chagalllte/device.mk)

PRODUCT_NAME := full_chagalllte
PRODUCT_DEVICE := chagalllte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T805

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_full_tablet_wifionly.mk)

# Inherit more AOKP stuff.
$(call inherit-product, vendor/aokp/configs/telephony.mk)

PRODUCT_NAME := aokp_chagalllte
PRODUCT_DEVICE := chagalllte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    TARGET_DEVICE=chagalllte
