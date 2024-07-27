mkdir matrixx
cd matrixx
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
git clone https://github.com/kamleshhv/device_xiaomi_sweet.git -b matrixx device/xiaomi/sweet
. b*/e*