#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common miku stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Inherit from cmi device
$(call inherit-product, device/xiaomi/cmi/device.mk)

PRODUCT_NAME := miku_cmi
PRODUCT_DEVICE := cmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cmi-user 13 RKQ1.211001.001/V14.0.5.0.TJAMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/cmi_global/cmi:13/RKQ1.211001.001/V14.0.5.0.TJAMIXM:user/release-keys


## Device identifier. This must come after all inclusions
PRODUCT_NAME := miku_cmi
PRODUCT_DEVICE := cmi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 10 Pro/cmi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cmi
