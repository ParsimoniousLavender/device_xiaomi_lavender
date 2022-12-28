#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 The Xiaomi-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit the sdm660-common definitions
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

# Device Path
DEVICE_PATH := device/xiaomi/lavender

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	 $(DEVICE_PATH)/overlay \
	 $(DEVICE_PATH)/overlay-lineage

# PRODUCT_SHIPPING_API_LEVEL indicates the first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 28

# APEX
ENABLE_APEX := true

# Audio
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
	$(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Consumerir
BOARD_HAVE_IR := true

# Device properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# FM
BOARD_HAVE_QCOM_FM := true

# Overlays
PRODUCT_PACKAGES += \
    NoCutoutOverlay \
    NotchBarKiller

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml

# Properties 
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/properties/product.prop

# Keylayout
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/keylayout/sdm660-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sdm660-snd-card_Button_Jack.kl

# Ramdisk
PRODUCT_PACKAGES += \
	init.device.rc

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_lavender

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Sensors
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
	$(DEVICE_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
	$(DEVICE_PATH)/sensors/elliptic.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/elliptic.conf

# Task profiles
PRODUCT_COPY_FILES += \
	system/core/libprocessgroup/profiles/cgroups_28.json:$(TARGET_COPY_OUT_SYSTEM)/etc/task_profiles/cgroups_28.json \
	system/core/libprocessgroup/profiles/task_profiles_28.json:$(TARGET_COPY_OUT_SYSTEM)/etc/task_profiles/task_profiles_28.json \
	system/core/libprocessgroup/profiles/cgroups_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
	system/core/libprocessgroup/profiles/task_profiles_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Vibrator
PRODUCT_PACKAGES += \
	vendor.qti.hardware.vibrator@1.2-service

# Wifi
PRODUCT_PACKAGES += \
    LavenderWifiOverlay

# Vendor files
$(call inherit-product, vendor/xiaomi/lavender/lavender-vendor.mk)

# AOSP DEVICE
PRODUCT_NAME := aosp_lavender
PRODUCT_DEVICE := lavender
PRODUCT_MODEL := Redmi Note 7 (AOSP)
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_PACKAGES += \
	libmmcamera_mg_faceppshim

