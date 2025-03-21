#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=cmi
export DEVICE_COMMON=sm8250-common
export VENDOR=xiaomi
export MIKU_GAPPS=true
export TARGET_WITH_KERNEL_SU=true

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
