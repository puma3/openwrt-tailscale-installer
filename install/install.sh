#!/usr/bin/env sh

curl -o /usr/sbin/tailscale.combined -L https://raw.githubusercontent.com/puma3/mips-be-binaries/main/tailscale/tailscale.combined_1.59.0_mips
chmod +x /usr/sbin/tailscale.combined
ln -s /usr/sbin/tailscale.combined /usr/sbin/tailscale
ln -s /usr/sbin/tailscale.combined /usr/sbin/tailscaled
curl -o /etc/init.d/tailscaled -L https://raw.githubusercontent.com/puma3/openwrt-tailscale-installer/main/procd-init-script/tailscaled
chmod +x /etc/init.d/tailscaled
/etc/init.d/tailscaled enable
/etc/init.d/tailscaled start
tailscale up
