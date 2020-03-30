#1. Modify default IP
sed -i 's/192.168.1.1/192.168.100.222/g' openwrt/package/base-files/files/bin/config_generate
#2. Modify default gatewy
sed -i '108a \                                set network.$1.gateway='192.168.100.1'' openwrt/package/base-files/files/bin/config_generate
#3. Modify default DNS
sed -i '109a \                                set network.$1.dns='222.172.200.68\ 223.5.5.5\ 8.8.8.8'' openwrt/package/base-files/files/bin/config_generate
#4. Add firmware timestamp
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(shell date +%Y%m%d-%H%M%S)-/g' openwrt/include/image.mk
