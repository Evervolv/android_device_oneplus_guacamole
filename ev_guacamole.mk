#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/aosp_guacamole.mk)

PRODUCT_NAME := ev_guacamole
PRODUCT_MODEL := guacamole

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Inherit evervolv overlays.
DEVICE_PACKAGE_OVERLAYS += device/oneplus/guacamole/overlay-ev

# Bootanimation
BOOT_ANIMATION_SIZE := 1440p

# Codename
PRODUCT_CODENAME := Expletus

# Build info
PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 12 SKQ1.211113.001 P.202212242003 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus7Pro/OnePlus7Pro:12/SKQ1.211113.001/P.202212242003:user/release-keys
