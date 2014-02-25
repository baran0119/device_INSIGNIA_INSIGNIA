LOCAL_PATH := $(call my-dir)

    include $(all-subdir-makefiles)
	
            # HACK for prebuilt libril
    $(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates)
    $(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)
            # HACK for prebuilt kernel ramdisk 
    $(shell mkdir -p $(OUT)/root/data)
    $(shell mkdir -p $(OUT)/root/dev)
    $(shell mkdir -p $(OUT)/root/proc)
    $(shell mkdir -p $(OUT)/root/sbin)
    $(shell mkdir -p $(OUT)/root/sys)
    $(shell mkdir -p $(OUT)/root/system/res)
    $(shell cp device/INSIGNIA/INSIGNIA/rootdir/* $(OUT)/root)
            # HACK for prebuilt recovery ramdisk
    $(shell mkdir -p $(OUT)/recovery/root/data)
    $(shell mkdir -p $(OUT)/recovery/root/dev)
    $(shell mkdir -p $(OUT)/recovery/root/etc)
    $(shell mkdir -p $(OUT)/recovery/root/proc)
    $(shell mkdir -p $(OUT)/recovery/root/res)
    $(shell mkdir -p $(OUT)/recovery/root/sbin)
    $(shell mkdir -p $(OUT)/recovery/root/sys)
    $(shell mkdir -p $(OUT)/recovery/root/system/bin)
    $(shell mkdir -p $(OUT)/recovery/root/tmp)
    $(shell cp device/INSIGNIA/INSIGNIA/recovery/* $(OUT)/recovery/root)

#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/etc/recovery.fstab $(OUT)/target/product/INSIGNIA/recovery/root/etc/recovery.fstab)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/default.prop $(OUT)/target/product/INSIGNIA/recovery/root/default.prop)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/fstab $(OUT)/target/product/INSIGNIA/recovery/root/fstab)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/init $(OUT)/target/product/INSIGNIA/recovery/root/init)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/init.rc $(OUT)/target/product/INSIGNIA/recovery/res/root/init.rc)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/init.usb.rc $(OUT)/target/product/INSIGNIA/recovery/root/init.usb.rc)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/ueventd.goldfish.rc $(OUT)/target/product/INSIGNIA/recovery/root/ueventd.goldfish.rc)
#    $(shell cp device/INSIGNIA/INSIGNIA/recovery/ueventd.rc $(OUT)/target/product/INSIGNIA/recovery/root/ueventd.rc)

    include $(call first-makefiles-under,$(call my-dir))
