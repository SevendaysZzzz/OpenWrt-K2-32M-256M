#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.122.1/g' package/base-files/files/bin/config_generate

# Modify default 8M flash to 32M
sed -i '/define\ Device\/phicomm_psg1218a/,/TARGET_DEVICES\ \+=\ phicomm_psg1218a/s/7872k/32768k/g' target/linux/ramips/image/mt7620.mk
sed -i 's/0x7b0000/0x1fb0000/' target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
