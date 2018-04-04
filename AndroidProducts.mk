#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_guacamole.mk \
    $(LOCAL_DIR)/lineage_guacamole.mk

COMMON_LUNCH_CHOICES := \
    aosp_guacamole-eng \
    aosp_guacamole-userdebug \
    aosp_guacamole-user \
    lineage_guacamole-eng \
    lineage_guacamole-userdebug \
    lineage_guacamole-user
