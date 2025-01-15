#!/bin/sh

cd /var/tmp
git clone https://github.com/vinceliuice/Orchis-theme
chmod +x ./Orchis-theme/install.sh
./Orchis-theme/install.sh -i debian -s compact -c dark --tweaks black -t red -n Orchis-Root
sudo mkdir /root/.themes/
sudo cp -rfv ~/.themes/Orchis-Root-Red-Dark-Compact* /root/.themes/
./Orchis-theme/install.sh -i debian -s compact -c dark --tweaks dracula -l
rm -rfv /var/tmp/Orchis-theme

## stupid dumb fix for libadwaita
sudo echo "GTK_THEME=Orchis-Dark-Compact-Dracula:dark" >> /etc/environment

## stupid dumb fix for flatpak
sudo flatpak override --filesystem=xdg-config/gtk-3.0
sudo flatpak override --filesystem=xdg-config/gtk-4.0
