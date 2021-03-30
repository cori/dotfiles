networksetup -setdnsservers Wi-Fi "$1" 1.1.1.1 8.8.8.8 192.168.1.1 && sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;
networksetup -setdnsservers "USB 10/100/1000 LAN" "$1" 1.1.1.1 8.8.8.8 192.168.1.1 && sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;
