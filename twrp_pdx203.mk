#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := pdx203
DEVICE_PATH := device/sony/pdx203

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pdx203
PRODUCT_NAME := twrp_pdx203
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-AT52
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=XQ-AT52 \
    TARGET_PRODUCT=XQ-AT52 \
    PRIVATE_BUILD_DESC="XQ-AT52-user 12 58.2.A.7.93 058002A007009304241360111 release-keys"
