

#================================== boot.img =====================================
TARGET_KERNEL_USE=5.4
BOARD_KERNEL_DTB := device/amlogic/yukawa-kernel/$(TARGET_KERNEL_USE)
LOCAL_DTB := $(BOARD_KERNEL_DTB)

LOCAL_KERNEL := device/amlogic/yukawa-kernel/$(TARGET_KERNEL_USE)/Image.lz4

PRODUCT_COPY_FILES +=  $(LOCAL_KERNEL):kernel

TARGET_SUPPORTS_32_BIT_APPS := true # error: Building a 32-bit-app-only product on a 64-bit device.
TARGET_SUPPORTS_64_BIT_APPS := true # error: Building a 32-bit-app-only product on a 64-bit device.

PRODUCT_BOOT_JARS := $(ART_APEX_JARS) # error: Check boot jars.


#  not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
PRODUCT_PACKAGES += \
    init_vendor \
    init_system 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.ramdisk.common:$(TARGET_COPY_OUT_RAMDISK)/fstab.smallboard

PRODUCT_NAME := smallboard
PRODUCT_DEVICE := smallboard
PRODUCT_BRAND := Android
PRODUCT_MODEL := Jao's example
PRODUCT_MANUFACTURER := Jao











