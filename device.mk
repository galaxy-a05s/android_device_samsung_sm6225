#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BENGAL_COMMON := true

# API levels
PRODUCT_SHIPPING_API_LEVEL := 32

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd 

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Add these lines to ensure touchscreen modules are included
PRODUCT_PACKAGES += \
    android.hardware.input.classifier@1.0-service \
    android.hardware.input.processor@1.0-service

# Include touch firmware in recovery
PRODUCT_COPY_FILES += \
    vendor/firmware/touchscreen/hx83112f_BOE_FW.bin:recovery/root/vendor/firmware/hx83112f_BOE_FW.bin \
    vendor/firmware/touchscreen/hx83112f_BOE_mp.bin:recovery/root/vendor/firmware/hx83112f_BOE_mp.bin \
    vendor/firmware/touchscreen/hx83112f_TXD_FW.bin:recovery/root/vendor/firmware/hx83112f_TXD_FW.bin \
    vendor/firmware/touchscreen/hx83112f_TXD_mp.bin:recovery/root/vendor/firmware/hx83112f_TXD_mp.bin \
    vendor/firmware/touchscreen/chipone_firmware.bin:recovery/root/vendor/firmware/chipone_firmware.bin \
    vendor/firmware/touchscreen/chipone_limit.bin:recovery/root/vendor/firmware/chipone_limit.bin

# QCOM
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 32

# Enable Fuse Passthrough
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true
