
IP_ADD=$(hostname -I)
STAT_IP=10.3.141.1
if [ "$(ping -c 1 google.com)" ]; then
	sudo mkdir /home/pi/Desktop/AP/TESTED
else
	#if [ ${IP_ADD} != ${STAT_IP} ]; then
	#if [ "$(hostname -I)" != "10.3.141.1" ]; then
	#if [ $(hostname -I) != "10.3.141.1" ]; then
	#if [ $IP_ADD != $STAT_IP ]; then
	#if [ $(hostname -I) != '10.3.141.1' ]; then
	if [ $STAT_IP != $IP_ADD ]; then
		echo "HELLO"
		sudo chmod 777 /etc
		sudo cp -r /home/pi/Desktop/AP/dhcpcd.conf /etc/dhcpcd.conf
		sudo cp -r /home/pi/Desktop/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
		sudo reboot
	fi
fi 
