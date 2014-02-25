
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/INSIGNIA/INSIGNIA/INSIGNIA-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/INSIGNIA/INSIGNIA/overlay

#LOCAL_PATH := device/INSIGNIA/INSIGNIA
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
TARGET_PREBUILT_KERNEL := device/INSIGNIA/INSIGNIA/kernel

PRODUCT_LOCALES := en_US de_DE es_ES fr_FR it_IT pl_PL ru_RU
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
PRODUCT_PROPERTY_OVERRIDES := \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.product.locale.language=pl \
    ro.product.locale.region=PL

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1
PRODUCT_NAME := cm_INSIGNIA
PRODUCT_DEVICE := INSIGNIA
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/INSIGNIA/INSIGNIA/prebuilt/system,system)

#Configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/INSIGNIA/INSIGNIA/configs,system)

#Recovery ramdisk add with two methods
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/INSIGNIA/INSIGNIA/recovery,recovery)
PRODUCT_COPY_FILES += \
    device/INSIGNIA/INSIGNIA/recovery:recovery

#Ramdisk
#PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,device/INSIGNIA/INSIGNIA/rootdir,root)
PRODUCT_COPY_FILES += \
    device/INSIGNIA/INSIGNIA/rootdir/advanced_meta_init.rc:root/advanced_meta_init.rc \
    device/INSIGNIA/INSIGNIA/rootdir/custom_build_verno:root/custom_build_verno \
    device/INSIGNIA/INSIGNIA/rootdir/default.prop:root/default.prop \
    device/INSIGNIA/INSIGNIA/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    device/INSIGNIA/INSIGNIA/rootdir/factory_init.rc:root/factory_init.rc \
    device/INSIGNIA/INSIGNIA/rootdir/fstab:root/fstab \
    device/INSIGNIA/INSIGNIA/rootdir/init:root/init \
    device/INSIGNIA/INSIGNIA/rootdir/init.aee.customer.rc:root/init.aee.customer.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.charging.rc:root/init.charging.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.goldfish.rc:root/init.goldfish.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.modem.rc:root/init.modem.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.no_ssd.rc:root/init.no_ssd.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.project.rc:root/init.project.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.protect.rc:root/init.protect.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.rc:root/init.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.trace.rc:root/init.trace.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.usb.rc:root/init.usb.rc \
    device/INSIGNIA/INSIGNIA/rootdir/init.xlog.rc:root/init.xlog.rc \
    device/INSIGNIA/INSIGNIA/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    device/INSIGNIA/INSIGNIA/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    device/INSIGNIA/INSIGNIA/rootdir/meta_init.rc:root/meta_init.rc \
    device/INSIGNIA/INSIGNIA/rootdir/res:root/res \
    device/INSIGNIA/INSIGNIA/rootdir/sbin/watchdogd:root/sbin/watchdogd \
    device/INSIGNIA/INSIGNIA/rootdir/sbin/meta_tst:root/sbin/meta_tst \
    device/INSIGNIA/INSIGNIA/rootdir/sbin/tune2fs:root/sbin/tune2fs \
    device/INSIGNIA/INSIGNIA/rootdir/sbin/e2fsck:root/sbin/e2fsck \
    device/INSIGNIA/INSIGNIA/rootdir/sbin/adbd:root/sbin/adbd \
    device/INSIGNIA/INSIGNIA/rootdir/sbin/ueventd:root/sbin/ueventd \
    device/INSIGNIA/INSIGNIA/rootdir/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/INSIGNIA/INSIGNIA/rootdir/ueventd.rc:root/ueventd.rc

# Insignia uses high-density artwork
PRODUCT_AAPT_CONFIG := normal xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += \
 		xhdpi \
		hdpi

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    persist.mtk.aee.aed=on \
    ro.debuggable=1 \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4
