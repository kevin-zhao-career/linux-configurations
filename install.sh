sudo timedatectl set-local-rtc 1
sudo apt-get install mdadm
sudo apt-get update
sudo apt-get upgrade
sudo mdadm --assemble --scan --verbose
