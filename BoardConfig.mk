

#================================== boot.img =====================================
DTBO_UNSIGNED := dtbo-unsigned.img
BOARD_PREBUILT_DTBOIMAGE = $(PRODUCT_OUT)/$(DTBO_UNSIGNED)

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 8388608 # 8 MiB

BOARD_KERNEL_OFFSET      := 0x1080000
BOARD_KERNEL_TAGS_OFFSET := 0x1000000
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS     := --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

BOARD_KERNEL_CMDLINE += no_console_suspend console=ttyAML0,115200 earlycon
BOARD_KERNEL_CMDLINE += printk.devkmsg=on
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/ffe07000.mmc 
BOARD_KERNEL_CMDLINE += init=/init
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE += androidboot.hardware=smallboard
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive


TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

# Secondary Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53