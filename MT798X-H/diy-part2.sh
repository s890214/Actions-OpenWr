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
# rm -rf feeds/packages/net/miniupnpd && svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/miniupnpd feeds/packages/net/miniupnpd
git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky
