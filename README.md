# net-reset
NIC recovery script

# description
net-reset is meant for recovering a bad NIC config when changing an IP on a remote system.

# usage
edit `((limit+=2))` to change how many minutes the script waits before correcting the NIC config

edit the IPs and config file you need in `sed -i s/currentIP/rightIP/g' /etc/sysconfig/network-scripts/ifcfg-eth0` 

replace `service network restart` with `systemd restart network` if required

*** run this as root or sudo

chmod +x ./net-reset.sh

./net-reset.sh
