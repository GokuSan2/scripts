mkdir blaze
cd blaze
repo init -u https://github.com/ProjectBlaze/manifest -b 14
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
git clone https://github.com/sweet-source/device_xiaomi_sweet.git -b 14 device/xiaomi/sweet
mkdir prebuilts/clang/host/linux-x86/clang-neutron; cd prebuilts/clang/host/linux-x86/clang-neutron; 
curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman";
chmod +x antman; ./antman -S=05012024; ./antman --patch=glibc; cd ../../../../../;
sed -i '/CLANG_EXTRA_FLAGS += --hip-path=\/dev\/null/d' vendor/blaze/build/tasks/kernel.mk;
git clone https://github.com/afterallafk/vendor_extra.git vendor/extra
. b*/e*
lunch blaze_sweet-ap2a-userdebug
make bacon -j$(nproc --all)
