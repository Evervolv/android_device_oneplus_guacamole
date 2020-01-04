#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Automatic refresh rate switching for power savings

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=6100000 \
    debug.sf.early_gl_phase_offset_ns=9000000 \
    debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000

PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms=500 \
    ro.surface_flinger.set_touch_timer_ms=750 \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.use_smart_90_for_video=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=1000000

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560
