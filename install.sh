sudo timedatectl set-local-rtc 1
sudo apt-get install mdadm
sudo apt-get update
sudo apt-get upgrade
sudo mdadm --assemble --scan --verbose
sudo apt install timeshift
sudo add-apt-repository universe
sudo apt-get install vim

sudo fdisk -l
sudo chmod o+w /etc/grub.d/09_windows
sudo vim /etc/default/grub
sudo chmod o-w /etc/grub.d/09_windows
sudo update-grub
