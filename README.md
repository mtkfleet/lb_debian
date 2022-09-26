# lb_debian
get debian root from live build


# get script
git clone https://github.com/mtkfleet/lb_debian.git


cd lb_debian

./lb.sh

# you will get debian root 
# if you not in china, in config file, remove --mirror part


echo "I: create configuration"
export LB_BOOTSTRAP_INCLUDE="apt-transport-https gnupg"
lb config \
 --mirror-bootstrap "http://mirrors.ustc.edu.cn/debian" \
 --mirror-chroot "http://mirrors.ustc.edu.cn/debian" \
 --mirror-chroot-security "http://mirrors.ustc.edu.cn/debian-security" \
 --mirror-binary "http://mirrors.ustc.edu.cn/debian" \
 --mirror-binary-security "http://mirrors.ustc.edu.cn/debian-security" \
 --apt-indices false \
 --apt-recommends false \
 --apt-secure false \
 --architectures arm64 \
 --archive-areas 'main contrib non-free' \
 --backports false \
 --binary-filesystem ext4 \
 --binary-images tar \
 --bootappend-live "hostname=linaro-alip username=linaro" \
 --bootloader "syslinux" \
 --bootstrap-qemu-arch arm64 \
 --bootstrap-qemu-static /usr/bin/qemu-aarch64-static \
 --cache false \
 --chroot-filesystem none \
 --compression gzip \
 --debootstrap-options "--variant=minbase --include=apt-transport-https,gnupg" \
 --distribution bullseye \
 --gzip-options '-9 --rsyncable' \
 --iso-publisher 'Linaro; http://www.linaro.org/; linaro-dev@lists.linaro.org' \
 --iso-volume 'Linaro Bullseye $(date +%Y%m%d-%H:%M)' \
 --linux-flavours none \
 --linux-packages none \
 --mode debian \
 --security true \
 --system normal \
 --updates true

