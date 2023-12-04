~/code/glitchdotcom/glitch/sh/dns/update-ip.sh cori
ip=$(cat /Users/cori/code/glitchdotcom/glitch/sh/.backend-cori.ip)

networksetup -setdnsservers Wi-Fi "$ip" 1.1.1.1 8.8.8.8 192.168.1.1 && sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;
networksetup -setdnsservers "Thunderbolt Ethernet Slot 0 2" "$ip" 1.1.1.1 8.8.8.8 192.168.1.1 && sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;
networksetup -setdnsservers "Thunderbolt Ethernet Slot 1" "$ip" 1.1.1.1 8.8.8.8 192.168.1.1 && sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;
