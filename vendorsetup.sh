# Cloning vendor repositories
git clone --depth=1 https://github.com/CuriousNom/proprius_vendor_samsung_gta4lwifi.git vendor/samsung/gta4lwifi
git clone --depth=1 https://github.com/CuriousNom/proprius_vendor_samsung_gta4l-common.git vendor/samsung/gta4l-common

# Cloning necessary repository
git clone --depth=1 https://github.com/CuriousNom/proprius_device_samsung_gta4l-common.git device/samsung/gta4l-common
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung.git -b lineage-21 hardware/samsung

# Cloning kernel repositories
git clone --depth=1 https://github.com/CuriousNom/kernel_samsung_gta4l.git -b 14.0-ksu kernel/samsung/sm6115

# Update KSU Targets
cd kernel/samsung/sm6115
git submodule sync
git submodule update --init --recursive
cd KernelSU
git checkout main
git pull
cd ../../../..
