cd /home/pi/AlexaMirror
sudo chmod +x npm.sh
sudo chmod +x mvn.sh
sudo chmod +x mouse.sh
sudo chmod +x wake.sh
sudo chmod +x mirror.sh
sudo chmod +x airplaystartup.sh
sudo chmod +x airplay.sh
cd /home/pi
cd .config
mkdir autostart
cd autostart

echo "[Desktop Entry]
Type=Application
Name=npm
Exec=/home/pi/npm.sh
StartupNotify=true" > npm.desktop
echo "[Desktop Entry]
Type=Application
Name=mvn
Exec=/home/pi/mvn.sh
StartupNotify=true" > mvn.desktop
echo "[Desktop Entry]
Type=Application
Name=mouse
Exec=/home/pi/mouse.sh
StartupNotify=true" > mouse.desktop
echo "[Desktop Entry]
Type=Application
Name=wake
Exec=/home/pi/wake.sh
StartupNotify=true" > wake.desktop
echo "[Desktop Entry]
Type=Application
Name=mirror
Exec=/home/pi/mirror.sh
StartupNotify=true" > mirror.desktop
echo "[Desktop Entry]
Type=Application
Name=airplaystartup
Exec=/home/pi/airplaystartup.sh
StartupNotify=true" > airplaystartup.desktop

chmod +x airplay.sh
echo "Installing Airplay and enabling it"
cd /home/pi/AlexaMirror
./airplay.sh