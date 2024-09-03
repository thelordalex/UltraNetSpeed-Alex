#!/system/bin/sh

# Ensure script is executed with root permissions
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# TCP/IP tweaks for improved network performance
echo "cubic" > /proc/sys/net/ipv4/tcp_congestion_control
echo "1" > /proc/sys/net/ipv4/tcp_window_scaling
echo "1" > /proc/sys/net/ipv4/tcp_sack
echo "1" > /proc/sys/net/ipv4/tcp_timestamps
echo "4096 87380 8388608" > /proc/sys/net/ipv4/tcp_rmem
echo "4096 16384 8388608" > /proc/sys/net/ipv4/tcp_wmem

# Wi-Fi performance enhancements
setprop wifi.scan.interval 120
setprop wifi.supplicant_scan_interval 120
setprop net.tcp.buffersize.wifi 4096,87380,1048576,4096,16384,110592

# 4G/5G network tweaks
setprop ro.ril.enable.a52 1
setprop ro.ril.enable.a53 1
setprop ro.ril.fast.dormancy.rule 0
setprop ro.ril.radio.svn 1
setprop ro.ril.set.mtu1472 1
setprop ro.ril.hsxpa 3

# General performance enhancements
echo "16777216" > /proc/sys/net/core/rmem_max
echo "16777216" > /proc/sys/net/core/wmem_max
echo "20480" > /proc/sys/net/core/optmem_max
echo "50576 64768 98152" > /proc/sys/net/ipv4/tcp_mem
echo "4096 87380 16777216" > /proc/sys/net/ipv4/tcp_rmem
echo "4096 65536 16777216" > /proc/sys/net/ipv4/tcp_wmem
echo "1" > /proc/sys/net/ipv4/tcp_mtu_probing

# Existing network settings
setprop net.tcp.buffersize.default 4096,887380,256960,4256960
setprop ro.ril.disable.power.collapse 0
setprop ro.ril.hsxpa 2
setprop ro.ril.gprsclass 10
setprop ro.ril.hep 1
setprop ro.ril.enable.dtm 1
setprop ro.ril.hsdpa.category 10
setprop ro.ril.enabled.5g.prefix 1
setprop ro.ril.htcmaskw1.bitmask 4294967295
setprop ro.ril.htcmask1 14449
setprop ro.ril.hsupa.category 5
setprop net.tcp.buffersize.default 4096,87580256960,4096,116584256960
setprop net.tcp.buffersize.umts 4096,87380,256960,4096,16384,256960
setprop net.tcp.buffersize.gprs 4096,87380,256960,4096,16384,256960
setprop net.tcp.buffersize.edge 4096,87380,256960,4096,16384,256960
setprop ro.da1.enable true
setprop ro.da1.method false
setprop Boost.Wi-Fi True

exit 0
