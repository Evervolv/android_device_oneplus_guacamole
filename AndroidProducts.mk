#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_guacamole.mk \
    $(LOCAL_DIR)/ev_guacamole.mk

COMMON_LUNCH_CHOICES := \
    aosp_guacamole-eng \
    aosp_guacamole-userdebug \
    aosp_guacamole-user \
    ev_guacamole-eng \
    ev_guacamole-userdebug \
    ev_guacamole-user
