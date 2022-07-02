#! /bin/bash

Port=22
Timeout=3
#Checking ssh port is enable or disable
for server in $(cat server_ip.txt);do
	echo "-" | nc -w $Timeout $server $Port &> /dev/null

	if [ $? -eq 0 ];then
		echo "$server is availalble"
	else
		echo "$server is unavailable"

	fi
done


