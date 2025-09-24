# Raspberry Pi Configuration

As it so happens, I was donated two raspberry pis to play around with: an rpi 5 and rpi 3B. At first I wanted to get started with the Pis and get them configured on my little local network. First, I made sure they were given account names and passwords, no default creds will stand!

The next step is configuring SSH access. For the 5, I imaged and booted to desktop to look around and have fun in the pi itself. Then I manually enabled SSH, copied over my public key, renamed the host and so forth. After that, it was smooth sailing. The 3 got imaged and booted headlessly. After that was date/time update and updating packages, software, etc.

I wanted to set up a little firewall to prevent IPs outside the Case network to gain access to the system. I decided to only allow from 172.20/16 and 192.22/16, and ran the [ufw commands](./ufw.png) to do so. Ideally this would be a narrower range but I don't know the Case IP ranges to do so. 

At CWRU, all wired LAN devices have to be registered to the network before they can be alotted an IP. So, I just decided to hook them up. Easy process, just giving the MAC addresses and what I want their DNS name to be. Eventually I will properly network it by setting up a local DHCP & DNS server but that's for a later time.

Lastly I just set up docker in the raspberry pis. Here is a [script](./docker-setup.sh) consisting of commands to do so.