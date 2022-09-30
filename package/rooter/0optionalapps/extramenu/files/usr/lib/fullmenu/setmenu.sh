#!/bin/sh
. /lib/functions.sh

log() {
	logger -t "Menu Change" "$@"
}

full=$1
source /etc/openwrt_release
twone=$(echo "$DISTRIB_RELEASE" | grep "22.03")

if [ $full = "0" ]; then
	fv="1"
else
	fv="0"
fi
uci set custom.menu.full=$fv
uci commit custom
