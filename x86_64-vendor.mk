include device/generic/goldfish/x86_64-kernel.mk

PRODUCT_PROPERTY_OVERRIDES += \
       vendor.rild.libpath=/vendor/lib64/libgoldfish-ril.so

ADVANCED_FEATURES_FILE := advancedFeatures.ini
ifneq ($(filter %_minigbm, $(TARGET_PRODUCT)),)
ADVANCED_FEATURES_FILE := advancedFeatures.ini.minigbm
endif

# This is a build configuration for a full-featured build of the
# Open-Source part of the tree. It's geared toward a US-centric
# build quite specifically for the emulator, and might not be
# entirely appropriate to inherit from for on-device configurations.
PRODUCT_COPY_FILES += \
    device/generic/goldfish/data/etc/config.ini.xl:config.ini \
	device/generic/goldfish/data/etc/$(ADVANCED_FEATURES_FILE):advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:encryptionkey.img \
    $(EMULATOR_KERNEL_FILE):kernel-ranchu

PRODUCT_SDK_ADDON_COPY_FILES += \
    device/generic/goldfish/data/etc/$(ADVANCED_FEATURES_FILE):images/x86_64/advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:images/x86_64/encryptionkey.img \
    $(EMULATOR_KERNEL_FILE):images/x86_64/kernel-ranchu

PRODUCT_COPY_FILES += \
    device/generic/goldfish/data/etc/configs/gpu.config:data/misc/gceconfigs/gpu.config

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2

TARGET_USES_MKE2FS := true

PRODUCT_COPY_FILES += \
    device/generic/goldfish/fstab.ranchu.x86:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.ranchu \
    device/generic/goldfish/fstab.ranchu.x86:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.ranchu
