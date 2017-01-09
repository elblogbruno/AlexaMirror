#script to emulate mouseclicks and keystrokes to
#navigate to the auth link given after each boot cycle
#with zero user input
sleep 60  #wait for 60s after desktop boots for java client to open
sudo xdotool mousemove 213 135 #move mouse to location of link
sudo xdotool click --repeat 3 1 #triple click to select entire link
sudo xdotool key ctrl+c #ctrlc to copy link to clipboard
sleep 1 #pause to chill
sudo xdotool mousemove 315 193
sudo xdotool click 1
sleep 2
sudo xdotool mousemove 61 13 #mouse to epiphany
sudo xdotool click 1 #click to open epiphany
sleep 10  #wait for epiphany to load
sudo xdotool key ctrl+v #paste link to address bar
sleep 1
sudo xdotool key Return #go to link
sleep 22  #wait for page to load
sudo xdotool windowsize $(xdotool getactivewindow) 100% 100%
sleep 2
sudo xdotool mousemove 844 484
sudo xdotool click 1 
sleep 20
sudo xdotool key ctrl+w #close the browser window
sleep 3
sudo xdotool key Return #focus should now be on the window with the auth link, this presses 'ok' to close the window


