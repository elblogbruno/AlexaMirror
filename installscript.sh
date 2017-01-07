sudo apt-get update
sudo apt-get --yes --force-yes install xdotool
sudo mkdir AlexaMirror
cd AlexaMirror
echo "Now is going to install MagicMirror"
sudo curl -sL https://raw.githubusercontent.com/MichMich/MagicMirror/master/installers/raspberry.sh | bash
# Disabling the screensaver
echo "@xset s noblank
@xset s off
@xset -dpms" > ~/.config/lxsession/LXDE-pi/autostart
sleep 1
echo "xserver-command=X -s 0 -dpms" > /etc/lightdm/lightdm.conf
# Finishes
echo "Now we will install alexa avs sample app"
sleep 5 
sudo git clone https://github.com/alexa/alexa-avs-sample-app.git
echo "Open a new terminal and type in  cd ~/AlexaMirror/alexa-avs-sample-app && nano automated_install.sh and change this parameters ProductID ClientID, and ClientSecret by the ones on amazon's developers page"

read -n1 -r -p "Press space to continue after doing all that stuff...and simply follow the instructions.Now comes the part of a good coffee" key

if [ "$key" = '' ]; then
    sleep 5 
	. automated_install.sh
else
    # Anything else pressed, do whatever else.
    # echo [$key] not empty
fi


# It Finished
sudo rm -f ~/.asoundrc && nano ~/.asoundrc

echo "pcm.!default {
  type asym
   playback.pcm {
     type plug
     # This is your output device (In this case AUX out on the Pi)
     slave.pcm "hw:0,0"
   }
   capture.pcm {
     type plug
     # This is your input device (it may be different from what is seen here)
     slave.pcm "hw:1,0"
   }
}" > ~/.asoundrc

echo "Follow the instructions on the web,because you need to run alexa for the first time to check if it is working."

read -n1 -r -p "Press space to continue after doing all that stuff..." key

if [ "$key" = '' ]; then
    sleep 5 
	sudo chmod +x afterinstalling.sh
	. afterinstalling.sh
else
    # Anything else pressed, do whatever else.
    # echo [$key] not empty
fi




