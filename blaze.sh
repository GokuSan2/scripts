mkdir blaze
cd blaze
repo init --depth=1 -u https://github.com/ProjectBlaze/manifest -b 14-QPR3
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
git clone https://github.com/sweet-source/device_xiaomi_sweet.git -b 14 device/xiaomi/sweet
. b*/e*
lunch blaze_sweet-ap2a-userdebug
make bacon -j48
