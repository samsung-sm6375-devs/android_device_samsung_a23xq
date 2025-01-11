#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/samsung/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a23xq

# Assert
TARGET_OTA_ASSERT_DEVICE := a23xq

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Board
TARGET_BOARD_NAME := SRPVC22C009

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)
TARGET_KERNEL_CONFIG := vendor/a23xq_defconfig

# Security Patch Level
VENDOR_SECURITY_PATCH := 2024-11-01

# Get non-open-source specific aspects
include vendor/samsung/a23xq/BoardConfigVendor.mk
