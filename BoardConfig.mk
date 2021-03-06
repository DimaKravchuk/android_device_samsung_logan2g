USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/logan2g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := sc6820i
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := logan
TARGET_BOARD_PLATFORM_GPU := mali-400 MP

# Assert
TARGET_OTA_ASSERT_DEVICE := logan2g

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/logan2g
TARGET_KERNEL_CONFIG := cyanogenmod-logan2g_defconfig
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 941621248
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2630614016
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/logan2g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/logan2g/bluetooth/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI                     := true
BOARD_WLAN_DEVICE                           := bcmdhd
BOARD_WLAN_DEVICE_REV                       := bcm4330_b2
WPA_BUILD_SUPPLICANT                        := true
BOARD_WPA_SUPPLICANT_DRIVER                 := NL80211
WPA_SUPPLICANT_VERSION                      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB            := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER                        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB                   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM                   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA                     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP                      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P                     := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_PATH                     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME                     := "dhd"
WIFI_DRIVER_MODULE_ARG                      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG                   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                                   := 802_11_ABG

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Hardware rendering
BOARD_EGL_CFG := device/samsung/logan2g/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
COMMON_GLOBAL_CFLAGS += -DSEC_PRODUCT_FEATURE_RIL_CALL_DUALMODE_CDMAGSM
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USES_LEGACY_ACQUIRE_WVM := true
BOARD_USES_BROADCOM_HARDWARE := true

# Camera
#BOARD_USE_METADATABUFFERTYPE := true
#BOARD_USE_STOREMETADATA := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# opengl
#BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
#BOARD_USES_LEGACY_MMAP := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
#ifeq ($(HOST_OS),linux)
#  ifeq ($(WITH_DEXPREOPT),)
#    WITH_DEXPREOPT := true
#  endif
#endif

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-logan2g

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/logan2g/ril/

# Recovery
#TARGET_RECOVERY_INITRC := 
TARGET_RECOVERY_FSTAB := device/samsung/logan2g/rootdir/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_MISC_PARTITION := true
#BOARD_RECOVERY_HANDLES_MOUNT := true
#BOARD_USES_MMCUTILS := false
#BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_DENSITY := hdpi

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/logan2g/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/logan2g/include

# Compat
#TARGET_USES_LOGD := false

# Legends said jemalloc causes a lot of random crash on free()
# but when dlmalloc running on this device it's terrible slow and causes
# slow app install; "Optimizing app"; "Android is upgrading"
# on boot. Feel free to try it
#MALLOC_IMPL := jemalloc

BOARD_SEPOLICY_DIRS += \
    device/samsung/logan2g/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    service_contexts \
    bkmgrd.te \
    device.te \
    surfaceflinger.te \
    bluetooth.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_server.te \
    tvserver.te \
    vclmk.te
