#
# Copyright (C) 2024 The Android Open Source Project
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

PRODUCT_COPY_FILES += \
    device/generic/goldfish/data/etc/advancedFeatures.ini.minigbm:advancedFeatures.ini \
    device/generic/goldfish/data/etc/config.ini.nexus5:config.ini

$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_x86_64.mk)

PRODUCT_BRAND := Android
PRODUCT_NAME := sdk_phone64_x86_64_minigbm
PRODUCT_DEVICE := emu64x
PRODUCT_MODEL := Android SDK built for x86_64_minigbm
