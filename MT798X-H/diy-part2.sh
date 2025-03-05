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

# ## -------------- passwall ---------------------------
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
sleep 1

# ## -------------- lucky ---------------------------
rm -rf feeds/packages/net/lucky
rm -rf feeds/luci/applications/luci-app-lucky

# #/etc/config/lucky.daji/lucky.conf
# git clone https://github.com/gdy666/luci-app-lucky.git -b main package/diy/lucky
git clone -b v2.15.7 --single-branch https://github.com/gdy666/luci-app-lucky.git package/diy/lucky
sleep 1

#-- use custom binary ver
# cp -f ${GITHUB_WORKSPACE}/_modFiles/2lucky/luckyMakefile package/diy/lucky/lucky/Makefile
# curl -o package/diy/lucky/lucky/Makefile https://raw.githubusercontent.com/budaig/Actions-OpenWrt/main/_modFiles/2lucky/luckyMakefile
# if [ $? -eq 0 ]; then
#     echo "luckyMakefile copied"
# else
#     echo "luckyMakefile copy failed"
# fi

# cp -f ${GITHUB_WORKSPACE}/_modFiles/2lucky/lucky package/diy/lucky/lucky/files/lucky
# curl -o package/diy/lucky/lucky/files/lucky https://raw.githubusercontent.com/budaig/Actions-OpenWrt/main/_modFiles/2lucky/lucky
# curl -o package/diy/lucky/lucky/files/lucky https://raw.githubusercontent.com/budaig/Actions-OpenWrt/main/_modFiles/2lucky/luckyMakefile250220andnewer
# if [ $? -eq 0 ]; then
#     echo "lucky bin copied"
# else
#     echo "lucky bin copy failed"
# fi
# ## ---------------------------------------------------------
