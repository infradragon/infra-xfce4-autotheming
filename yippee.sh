#!/bin/sh

cd /var/tmp
git clone https://github.com/vinceliuice/Orchis-theme
chmod +x ./Orchis-theme/install.sh
./Orchis-theme/install.sh -i debian -s compact -c dark --tweaks black -t red -n Orchis-Root
sudo cp -fv ~/.themes/Orchis-Root-Red-Dark-Compact* /root/.themes/
./Orchis-theme/install.sh -i debian -s compact -c dark --tweaks dracula -l
rm -rfv /var/tmp/Orchis-theme
sudo cat "GTK_THEME=Orchis-Dark-Compact-Dracula:dark" >> /etc/environment