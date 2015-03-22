# backup file
sudo cp /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage ~/IOAHCIBlockStorage.backup

# disable kext signing
sudo nvram boot-args=kext-dev-mode=1

# patch file
sudo perl -pi -e 's|(\x52\x6F\x74\x61\x74\x69\x6F\x6E\x61\x6C\x00).{9}(\x00\x51)|$1\x00\x00\x00\x00\x00\x00\x00\x00\x00$2|sg' /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage
sudo touch /System/Library/Extensions/

# clear kext caches
sudo kextcache -system-prelinked-kernel
sudo kextcache -system-caches