# DIY-1 此脚本功能：添加外部插件
# =======================================================================================================================

# 修复golang版本过低
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

# 1-添加 PowerOff 插件
git clone https://github.com/nhyoungboy/luci-app-poweroff.git package/luci-app-poweroff

# 2-添加 Mosdns 插件
rm -rf feeds/packages/net/mosdns
rm -rf feeds/luci/applications/luci-app-mosdns
# sed -i '$a src-git mosdns https://github.com/sbwml/luci-app-mosdns' feeds.conf.default

# remove v2ray-geodata package from feeds (openwrt-22.03 & master)
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/sbwml/luci-app-mosdns package/luci-app-mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata


# 3-添加 Openclash 插件
wget -O package/openclash.zip https://codeload.github.com/vernesong/OpenClash/zip/refs/heads/master
unzip -d package/openclash package/openclash.zip
cp -r package/openclash/OpenClash-master/luci-app-openclash package/luci-app-openclash
rm -rf package/openclash package/openclash.zip

# 4-添加 onliner 插件
sed -i '$a src-git onliner https://github.com/nhyoungboy/luci-app-onliner' feeds.conf.default

# 5-添加  主题
# rm -rf feeds/luci/themes/luci-theme-argon
# git clone https://github.com/sbwml/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
git clone --depth=1 https://github.com/nhyoungboy/luci-theme-opentomcat.git package/luci-theme-opentomcat


