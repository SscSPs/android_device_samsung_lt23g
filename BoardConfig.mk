USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/lt023g/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := PXA988

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1507852288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5775556608
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/lt02
TARGET_KERNEL_CONFIG := pxa986_lt023g_blackhawk_defconfig
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/samsung/lt023g/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp


# Not Yet
#TARGET_BOARD_INFO_FILE := device/samsung/lt023g/board-info.txt

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := device/samsung/lt023g/rootdir/fstab.pxa988
RECOVERY_FSTAB_VERSION := 2
#TARGET_RECOVERY_INITRC := device/samsung/lt023g/recovery/root/init.recovery.rc
BOARD_RECOVERY_SWIPE := true

# Init
#TARGET_PROVIDES_INIT := true
#TARGET_PROVIDES_INIT_TARGET_RC := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mrvl8787
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mrvl8787
BOARD_WLAN_DEVICE := mrvl8787
BOARD_WLAN_VENDOR := MRVL
WIFI_SDIO_IF_DRIVER_MODULE_PATH  := "/system/lib/modules/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME  := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG   := ""
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sd8787.ko"
WIFI_DRIVER_MODULE_NAME := "sd8787"
WIFI_DRIVER_MODULE_ARG  := "drv_mode=5 cfg80211_wext=0xc sta_name=wlan uap_name=wlan wfd_name=p2p max_uap_bss=1 fw_name=mrvl/sd8787_uapsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/proc/mwlan/config"
WIFI_DRIVER_FW_PATH_STA := "drv_mode=5"
WIFI_DRIVER_FW_PATH_AP :=  "drv_mode=6"
WIFI_DRIVER_FW_PATH_P2P := "drv_mode=5"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 17
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# Graphics
USE_OPENGL_RENDERER := true
#BOARD_EGL_CFG := device/samsung/lt023g/configs/egl.cfg

# Audio
BOARD_USES_ALSA_AUDIO := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/lt023g/bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_SAP := false

# Charging mode
#BOARD_CHARGER_RES := device/samsung/lt023g/res/charger
BOARD_CHARGING_MODE_BOOTING_LPM := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/lt023g/include

# SELinux
#BOARD_SEPOLICY_DIRS += \
#    device/samsung/lt023g/sepolicy
#BOARD_SEPOLICY_UNION += \
