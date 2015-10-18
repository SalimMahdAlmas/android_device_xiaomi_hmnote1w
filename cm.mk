# Copyright (C) 2010 The AndroidFire Project
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

# Release name
PRODUCT_RELEASE_NAME := hmnote1w

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/hmnote1w/device.mk)

PRODUCT_DEVICE := hmnote1w
PRODUCT_NAME := cm_hmnote1w
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := hmnote1w
PRODUCT_MANUFACTURER := Xioami
