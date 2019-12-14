#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-ev

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev/packages/apps/Snap

# Camera
PRODUCT_PACKAGES += \
    vendor.evervolv.camera.motor@1.0 \
    vendor.evervolv.camera.motor@1.0-service.oneplus_msmnile \
    OnePlusCameraHelper

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.display.guacamole.rc

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/guacamole/guacamole-vendor.mk)
