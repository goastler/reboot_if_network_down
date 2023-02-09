#! /bin/bash

sleep 5m
while ping -c 3 8.8.8.8; do
	sleep 1m
done

echo "no network, rebooting..."
sleep 10s
reboot
