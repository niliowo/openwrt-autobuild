#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Modify the default LAN port IP
#sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

sed -i 's/192.168.1.1/192.168.66.1/g' package/base-files/files/bin/config_generate

# Modify the Compiler author information
#sed -i "751i \\\t\t<tr><td width=\"33%\"><%:Author HomePage%></td><td>https://hexo.niliovo.top</td></tr>" package/lean/autocore/files/x86/index.htm
#sed -i "742i \\\t\t<tr><td width=\"33%\"><%:Author HomePage%></td><td>https://hexo.niliovo.top</td></tr>" package/lean/autocore/files/arm/index.htm

sed -i "751i \\\t\t<tr><td width=\"33%\"><%:Author HomePage%></td><td>https://hexo.niliovo.top</td></tr>" package/lean/autocore/files/x86/index.htm
sed -i "742i \\\t\t<tr><td width=\"33%\"><%:Author HomePage%></td><td>https://hexo.niliovo.top</td></tr>" package/lean/autocore/files/arm/index.htm

# Modify the login page banner information
echo "
NNNNNNNN        NNNNNNNNIIIIIIIIIILLLLLLLLLLL             IIIIIIIIII
N:::::::N       N::::::NI::::::::IL:::::::::L             I::::::::I
N::::::::N      N::::::NI::::::::IL:::::::::L             I::::::::I
N:::::::::N     N::::::NII::::::IILL:::::::LL             II::::::II
N::::::::::N    N::::::N  I::::I    L:::::L                 I::::I  
N:::::::::::N   N::::::N  I::::I    L:::::L                 I::::I  
N:::::::N::::N  N::::::N  I::::I    L:::::L                 I::::I  
N::::::N N::::N N::::::N  I::::I    L:::::L                 I::::I  
N::::::N  N::::N:::::::N  I::::I    L:::::L                 I::::I  
N::::::N   N:::::::::::N  I::::I    L:::::L                 I::::I  
N::::::N    N::::::::::N  I::::I    L:::::L                 I::::I  
N::::::N     N:::::::::N  I::::I    L:::::L         LLLLLL  I::::I  
N::::::N      N::::::::NII::::::IILL:::::::LLLLLLLLL:::::LII::::::II
N::::::N       N:::::::NI::::::::IL::::::::::::::::::::::LI::::::::I
N::::::N        N::::::NI::::::::IL::::::::::::::::::::::LI::::::::I
NNNNNNNN         NNNNNNNIIIIIIIIIILLLLLLLLLLLLLLLLLLLLLLLLIIIIIIIIII

%D %V, %C, Power By Nili
HomePage https://hexo.niliovo.top
" > package/base-files/files/etc/banner

# Add third-party plugin libraries
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '5i src-git kenzo https://github.com/kenzok8/openwrt-packages\nsrc-git small https://github.com/kenzok8/small' feeds.conf.default

sed -i '5i src-git kenzo https://github.com/kenzok8/openwrt-packages\nsrc-git small https://github.com/kenzok8/small\nsrc-git amlogic https://github.com/ophub/luci-app-amlogic' feeds.conf.default