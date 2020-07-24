#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Display density(DEFAULT FOR DEVICE)
TARGET_SCREEN_DENSITY := 411

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/violet

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := violet

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_KERNEL_CONFIG := vendor/lineage_violet_defconfig

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno612

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit from the proprietary version
-include vendor/xiaomi/violet/BoardConfigVendor.mk
