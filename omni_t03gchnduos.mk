#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from t03gchnduos device
$(call inherit-product, device/samsung/t03gchnduos/device.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t03gchnduos
PRODUCT_NAME := omni_t03gchnduos
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N7102
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := samsung GT-N7102

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/t03gduoszc/t03gchnduos:4.3/JSS15J/N7102ZCUENI2:user/release-keys" \
    PRIVATE_BUILD_DESC="t03gduoszc-user 4.3 JSS15J N7102ZCUENI2 release-keys"
