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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

rm -rf ./feeds/packages/net/adguardhome && git clone https://github.com/kongfl888/luci-app-adguardhome.git ./package/luci-app-adguardhome
wget https://github.com/vernesong/OpenClash/archive/refs/tags/v0.45.121-beta.tar.gz && tar xvf v0.45.121-beta.tar.gz -C ./package
git clone https://github.com/messense/aliyundrive-webdav.git ./package/aliyundive-webdav
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone https://gitee.com/wubozh/feeds-kiddin9.git /package/kiddin9
git clone https://github.com/kenzok8/small.git package/small
