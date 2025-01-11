#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Display
TARGET_SCREEN_HEIGHT := 2408
TARGET_SCREEN_WIDTH := 1080

# Inherit Common Device Tree
$(call inherit-product, device/samsung/sm6375-common/common.mk)

# NFC
PRODUCT_PACKAGES += \
    init.nfc.samsung.rc \
    
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/nfc/nfc/st21nfc_conf.txt:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/st21nfc_conf.txt \
    $(DEVICE_PATH)/configs/nfc/libnfc-hal-st.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-hal-st.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-mtp-SN100.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-SN100.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-mtp-SN100_38_4MHZ.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-SN100_38_4MHZ.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-qrd-SN100.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-SN100.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-qrd-SN100_38_4MHZ.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-SN100_38_4MHZ.conf \

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \

# Ramdisk
PRODUCT_PACKAGES += \
    init.a23xq.rc \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/a23xq/a23xq-vendor.mk)
