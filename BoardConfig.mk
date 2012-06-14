#
# Copyright (C) 2011 The Android Open-Source Project
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

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=mako lpj=67677

BOARD_USES_ALSA_AUDIO:= true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := MAKO
TARGET_BOOTLOADER_NAME=mako
#TARGET_BOARD_INFO_FILE := device/lge/j1tm/board-info.txt

# FIXME: HOSTAPD-derived wifi driver 
ifeq (0,0)
BOARD_HAS_QCOM_WLAN := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_2_0_DEV
HOSTAPD_VERSION := VER_2_0_DEV
WIFI_DRIVER_FW_PATH_STA := "sta"
#WIFI_DRIVER_FW_PATH_AP  := "ap"
#WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_CONF_FILE := "/data/misc/wifi/WCNSS_qcom_cfg.ini"
WIFI_DRIVER_DEF_CONF_FILE := $(WIFI_DRIVER_CONF_FILE)
BOARD_WLAN_DEVICE := qcwcn
endif

BOARD_EGL_CFG := device/lge/mako/egl.cfg

# no hardware audio
BOARD_USES_GENERIC_AUDIO := true

# no hardware camera
USE_CAMERA_STUB := true

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITON := true

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x016E3600
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x016E3600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1207959552  # 1.1GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_SECURE_SERVICES := true

-include vendor/lge/mako/BoardConfigVendor.mk