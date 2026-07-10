#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

IS_PHONE := true

PRODUCT_NAME := lineage_pdx215
PRODUCT_DEVICE := pdx215
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-BC52

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="XQ-BC52-user 13 61.2.A.0.472A 061002A0000472A0046651803 release-keys" \
    BuildFingerprint=Sony/XQ-BC52/XQ-BC52:13/61.2.A.0.472A/061002A0000472A0046651803:user/release-keys \
    DeviceName=XQ-BC52 \
    DeviceProduct=XQ-BC52 \
    SystemDevice=XQ-BC52 \
    SystemName=XQ-BC52

TARGET_ENABLE_BLUR := false

TARGET_INCLUDE_AXFX := true

TARGET_INCLUDES_LOS_PREBUILTS := true

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 12,12,12
AXION_CAMERA_FRONT_INFO := 8

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := NullW06

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_Oryon

# Charging
BYPASS_CHARGE_SUPPORTED := true
# Path for charge toggle
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/battchg_ext/smart_charging_interruption

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/devices/dsi_panel_driver/hbm_mode

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := false

# doze gestures
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := false
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := false
