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
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# git clone https://github.com/kiddin9/openwrt-packages.git package/kiddin9
# rm -rf feeds/packages/net/miniupnpd && svn co https://github.com/immortalwrt/packages/tree/15a48bbdb265f0df4f2e517b3b53c1cd00878329/net/miniupnpd feeds/packages/net/miniupnpd
# git clone https://github.com/gdy666/luci-app-lucky.git package/lucky

mkdir -p files/tmp
git clone https://github.com/s890214/openwrt-packages files/tmp/

# 确保文件夹 files 和 etc 目录存在
mkdir -p files/etc
echo "opkg install /tmp/lucky_2.11.2_Openwrt_arm64.ipk" >> files/etc/rc.local
echo "opkg install /tmp/luci-app-lucky_2.1.1-1_all.ipk" >> files/etc/rc.local
echo "opkg install /tmp/luci-i18n-lucky-zh-cn_2.1.1-1_all.ipk" >> files/etc/rc.local
