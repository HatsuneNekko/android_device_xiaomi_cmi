#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/cmi

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_cmi
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_cmi

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/cmi.config

# OTA assert
TARGET_OTA_ASSERT_DEVICE := cmi

# PowerShare
SOONG_CONFIG_NAMESPACES += XIAOMI_POWERSHARE
SOONG_CONFIG_XIAOMI_POWERSHARE := WIRELESS_TX_ENABLE_PATH
SOONG_CONFIG_XIAOMI_POWERSHARE_WIRELESS_TX_ENABLE_PATH := /sys/devices/platform/soc/c440000.qcom,spmi/spmi-0/spmi0-02/c440000.qcom,spmi:qcom,pm8150b@2:qcom,qpnp-smb5/power_supply/wireless/reverse_chg_mode

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/cmi/BoardConfigVendor.mk
