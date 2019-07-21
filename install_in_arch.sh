sudo pacman -S lts
sudo pacman -Syu
sudo pacman -S linux-headers
sudo dkms build rtlwifi-new/0.6
sudo dkms install rtlwifi-new/0.6
sudo modprobe -v rtl8723de ant_sel=2
sudo /bin/sh -c 'echo "options rtl8723de ant_sel=2" >> /etc/modprobe.d/rtl8723de.conf'
sudo pacman -S wpa_supplicant
sudo pacman -S wpa_supplicant wireless_tools networkmanager
sudo systemctl enable NetworkManager.service
sudo systemctl disable dhcpcd.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service
