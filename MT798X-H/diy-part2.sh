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

# ## -------------- lucky ---------------------------
rm -rf feeds/packages/net/lucky
rm -rf feeds/luci/applications/luci-app-lucky

# #/etc/config/lucky.daji/lucky.conf
# git clone https://github.com/gdy666/luci-app-lucky.git -b main package/diy/lucky
# git clone -b v2.15.7 --single-branch https://github.com/gdy666/luci-app-lucky.git package/diy/lucky

# 处理2.15.7+版本 后台打不开问题
# 1. 先clone最新版main分支 (仅main分支)到指定目录
git clone -b main --single-branch https://github.com/gdy666/luci-app-lucky.git package/diy/lucky

# 2. 删除目录中你想以旧版本覆盖的部分
rm -rf package/diy/lucky/luci-app-lucky

# 3. 单独clone v2.15.7版本 (仅该分支)到临时位置
git clone -b v2.15.7 --single-branch https://github.com/gdy666/luci-app-lucky.git /tmp/tmp_lucky

# 4. 移动所需文件/文件夹到目标目录
mv /tmp/tmp_lucky/luci-app-lucky package/diy/lucky/

# 5. 删除临时文件夹
rm -rf /tmp/tmp_lucky

sleep 1
