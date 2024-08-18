mkdir matrixx
cd matrixx
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
git clone https://github.com/kamleshhv/device_xiaomi_sweet.git -b mat device/xiaomi/sweet
git clone https://github.com/Matrixx-Devices/android_vendor_lineage-priv.git -b 14.0 vendor/lineage-priv
. b*/e*
