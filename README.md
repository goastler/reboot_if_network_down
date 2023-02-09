# reboot_if_network_down
Reboot the computer if the network is down.

## Motivation
Sometimes my servers / make-shift routers have connection issues and need to be rebooted. This script automates that by checking the network using ping every minute, with a 5 minute lead time. If the ping is unsuccessful, reboot.

## Install
1. Copy script into place.
2. Enable passwordless reboot
`<myusername> ALL=NOPASSWD:/sbin/reboot`
3. Add a cronjob
```
crontab -e
```
Add the following line:
```
@reboot bash /path/to/script/reboot_if_network_down.sh > reboot_if_network_down.log 2>&1
```
