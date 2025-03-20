sudo timedatectl set-local-rtc 1
sudo apt-get install mdadm
sudo apt-get update
sudo apt-get upgrade
sudo mdadm --assemble --scan --verbose
sudo apt install timeshift
sudo add-apt-repository universe
sudo apt-get install vim

sudo fdisk -l
sudo vim /etc/default/grub

sudo blkid /dev/nvme0n1p1 # Windows EFI Device

sudo cp /etc/grub.d/40_custom /etc/grub.d/09_windows
sudo chmod o+w /etc/grub.d/09_windows
sudo vim /etc/grub.d/09_windows
sudo chmod o-w /etc/grub.d/09_windows
sudo update-grub
sudo cat /boot/grub/grub.cfg 

sudo apt-get install mokutil openssl
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=Kevin Zhao/"
sudo mokutil --import MOK.der
sudo ubuntu-drivers list
sudo ubuntu-drivers install
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 MOK.priv MOK.der $(modinfo -n nvidia-modeset)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 MOK.priv MOK.der $(modinfo -n nvidia-uvm)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 MOK.priv MOK.der $(modinfo -n nvidia)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 MOK.priv MOK.der $(modinfo -n nvidia-drm)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 MOK.priv MOK.der $(modinfo -n nvidia-peermem)
sudo update-initramfs -u
Step 8: Reboot Again and Verify
