#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# https://github.com/1791356563/openwrt-autobuild
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Sinicize Compiler author infomation
#sed -i "5i \\\nmsgid \"Author HomePage\"\nmsgstr \"作者主页\"" feeds/luci/modules/luci-base/po/zh-cn/base.po

sed -i "5i \\\nmsgid \"Author HomePage\"\nmsgstr \"作者主页\"" feeds/luci/modules/luci-base/po/zh-cn/base.po

# Modify the default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-neobird/g' feeds/luci/collections/luci/Makefile

sed -i 's/luci-theme-bootstrap/luci-theme-neobird/g' feeds/luci/collections/luci/Makefile

sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION='R$(date +%Y.%m.%d)'|g" package/lean/default-settings/files/zzz-default-settings
echo "DISTRIB_SOURCECODE='lede'" >>package/base-files/files/etc/openwrt_release
