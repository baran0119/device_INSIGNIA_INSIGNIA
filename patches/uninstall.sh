echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/native
echo "Reverting frameworks/native patches..."
git apply --reverse $rootdirectory/device/INSIGNIA/INSIGNIA/patches/frameworks/native/*.patch
echo " "


cd $rootdirectory
cd hardware/libhardware
echo "Reverting hardware/libhardware patches..."
git apply --reverse $rootdirectory/device/INSIGNIA/INSIGNIA/patches/hardware/libhardware/*.patch
echo " "

cd $rootdirectory
cd system/core
echo "Reverting system/core patches..."
git apply --reverse $rootdirectory/device/INSIGNIA/INSIGNIA/patches/system/core/*.patch
echo " "

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
