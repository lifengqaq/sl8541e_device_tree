#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sl8541e_1h10 device
$(call inherit-product, device/m12/sl8541e_1h10/device.mk)

PRODUCT_DEVICE := sl8541e_1h10
PRODUCT_NAME := omni_sl8541e_1h10
PRODUCT_BRAND := hesc
PRODUCT_MODEL := XS Watch
PRODUCT_MANUFACTURER := m12

PRODUCT_GMS_CLIENTID_BASE := android-m12

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sl8541e_1h10_oversea-user 8.1.0 OPM2.171019.012 31613 release-keys"

BUILD_FINGERPRINT := SPRD/sl8541e/sl8541e:8.1.0/OPM2.171019.012/31613:user/release-keys
