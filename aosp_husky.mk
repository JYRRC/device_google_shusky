#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Horizondroid stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp-horizon_husky.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/husky/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := aosp_husky

# Horizondroid Flags
WITH_GMS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BUILD_VIMUSIC := false
TARGET_BUILD_INNERTUNE := true
TARGET_HAS_UDFPS := true

# Horizon stuff.
HORIZON_MAINTAINER := JYR_RC

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.240205.004 11269751 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UQ1A.240205.004/11269751:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
