#!/bin/bash

IP=$(curl -s 'https://api.ipify.org?format=json' | /snap/bin/jq '.ip')

if [[ -f $HOME/tmp/previous_ip ]]; then
	OLD_IP=$(cat $HOME/tmp/previous_ip)
	if [[ $OLD_IP == $IP ]]; then
		echo "$IP is still valid"
	else
		echo $IP >  $HOME/tmp/previous_ip 
		echo "Sending new IP: $IP"
		$HOME/bin/pj1_send_jmd_wan_ok.sh
	fi
else
	echo "Sending new IP: $IP"
	echo $IP >  $HOME/tmp/previous_ip 
	$HOME/bin/pj1_send_jmd_wan_ok.sh
fi

