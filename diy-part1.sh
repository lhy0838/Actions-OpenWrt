#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# 您之前的 helloworld 和 passwall 可以根据需要保留或删除。
# 如果您只想要 turboacc，可以注释掉它们或删除。
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 添加 luci-app-turboacc 仓库
# 这是编译 turboacc 插件所必需的。
git clone https://github.com/chenmozhijin/turboacc.git package/turboacc

# Add a feed source for luci-app-lucky
echo 'src-git lucky https://github.com/gdy666/luci-app-lucky.git' >> feeds.conf.default
