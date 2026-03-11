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

AVIUM_MAINTAINER := NullW06
AVIUM_VERSION_APPEND_TIME_OF_DAY := false

AVIUM_SETTINGS_SOC_MODEL_NAME := Snapdragon-Oryon

AVIUM_SETTINGS_DEVICE_CODENAME := NX789J

WITH_GMS := false
TARGET_USES_GSANS := false
TARGET_INCLUDE_GOOGLEIME := false
TARGET_GOOGLEIME_OVERRIDE_IME := false

AVIUM_FORCE_SET_FAKE_PROP := true

TARGET_FORCE_ENABLE_BLUR := false
