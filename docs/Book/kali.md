---
title: HACKING with KALI LINUX
parent: Book
---
### Chapter 5: Scanning and Managing Networks
```
# modify my ip
$ ifconfig [interface_name] <xx.xx.xx.xx>

# modify net mask and broadcast address
$ ifconfig [interface_name] <xx.xx.xx.xx> netmask <xx.xx.xx.xx> broadcast <xx.xx.xx.xx>

# spoof MAC address
$ ifconfig [interface_name] down
$ ifconfig [interface_name] hw ether XX:XX:XX:XX:XX:XX
$ ifconfig [interface_name] up

# browse bluetooth services 
$ sdptool browse MACaddress

# check if device is reachable
$ l2ping MACaddress
```

- Other commands
    - dig: gather DNS information
        - IP address of the target’s nameserver
        - the target’s email server
        - (potentially) any subdomains and IP addresses
    - wifi 관련
        - iwevent, iwlist, iwspy, ifrename, iwgetid
        - aircrack-ng (airmon-ng, airodump-ng)

- Bluetooth paring
   - 2개의 device 가 discoverable mode 에서 Technical information, Name, List of services, Class 를 broadcast
   - link key 를 교환하여 추후 paring 시 사용
   - hciconfig, hcitool, hcidump

### Chapter 7: Cyber Security
- **We do not desire that one critical part of a system failure can render the entire system unusable.**
- **A single point of failure can be reduced or eliminated by way of redundancy.**

### Chapter 8: Becoming Secure and Anonymous
- proxy 에 접속후 proxy 의 IP 사용하여 다른 곳으로 접속

```
# proxy chain 을 활용한 접속
proxychains <the command you want proxied> <arguments>
```

### Chapter 9: Cryptography
- Symmetric Cryptography: DES, 3DES, AES, RC4, Blowfish, Twofish
- Asymmetric Cryptography: Diffie-Hellman, RSA, PKI, ECC, PGP
