#
# Copyright (C) 2015 The AndroidFire Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk

LOCAL_PATH 					:= device/xiaomi/hmnote1w


# Platform
TARGET_BOARD_PLATFORM 			:= MT6592
TARGET_BOOTLOADER_BOARD_NAME 		:= mt6592
TARGET_BOARD_PLATFORM_GPU 			:= Mali-450MP4


# Architecture
TARGET_ARCH 					:= arm
TARGET_ARCH_VARIANT 				:= armv7-a-neon
TARGET_CPU_VARIANT 				:= cortex-a7
TARGET_CPU_ABI 				= armeabi-v7a
TARGET_CPU_ABI2 				:= armeabi
ARCH_ARM_HAVE_NEON				:= true
ARCH_ARM_HAVE_VFP 				:= true
ARCH_ARM_HAVE_TLS_REGISTER 			:= true
WITH_DEXPREOPT 				:= true
TARGET_BOOTLOADER_BOARD_NAME 		:= mt6592
TARGET_NO_BOOTLOADER 			:=  true

#Kernel
TARGET_USERIMAGES_USE_EXT4 			:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED 	:= false
BOARD_KERNEL_CMDLINE  			:=
BOARD_KERNEL_BASE  				:= 0x10000000
BOARD_KERNEL_PAGESIZE  			:= 2048
TARGET_PREBUILT_KERNEL                    := kernel/xiaomi/hmnote1w
TARGET_KERNEL_CONFIG 			:= hmnote1w_defconfig

#Camera
USE_CAMERA_STUB 				:= true

#RIL
BOARD_RIL_CLASS 				:= ../../../device/xiaomi/hmnote1w/ril/


BOARD_SEPOLICY_DIRS 				:= \
       device/xiamoi/hmnote1w/sepolicy

BOARD_SEPOLICY_UNION 			:= \
       device.te \
       app.te \
       system.te \
       file_contexts

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	       := 947912704
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 4303355904
BOARD_FLASH_BLOCK_SIZE 			:= 131072

# Util
BOARD_HAS_NO_SELECT_BUTTON                := true

# MKBootimg
BOARD_CUSTOM_BOOTIMG_MK                   := /device/xiaomi/hmnote1w/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS                      := --board 1400865686

# Recovery

TARGET_RECOVERY_FSTAB                     := /device/xiaomi/hmnote1w/rootdir/recovery.fstab

#WIFI

WPA_SUPPLICANT_VERSION                    := VER_0_8_X
BOARD_HOSTAPD_DRIVER                      := NL80211
BOARD_HOSTAPD_PRIVATE_LIB                 := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER               := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB          := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM                 :="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA                   :=STA
WIFI_DRIVER_FW_PATH_AP                    :=AP
WIFI_DRIVER_FW_PATH_P2P                   :=P2P
