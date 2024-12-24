# DIY-1 此脚本功能：添加外部插件
# =======================================================================================================================


# 1-添加 MosDNS 插件
# git clone https://github.com/sbwml/luci-app-mosdns.git package/luci-app-mosdns
git clone --depth=1 https://github.com/sbwml/luci-app-mosdns package/luci-app-mosdns

# 2-添加 PowerOff 关机插件
git clone https://github.com/WukongMaster/luci-app-poweroff.git package/luci-app-poweroff

# 3-添加 opentomcat 主题
git clone https://github.com/WukongMaster/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

# 4-添加 OpenClash 插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default


