#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common miku stuff.
$(call inherit-product, vendor/miku/config/common_full_phone.mk)

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


# miku
MIKU_MAINTAINER := Hatsune__Miku_
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_PIXEL_CHARGER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := true
