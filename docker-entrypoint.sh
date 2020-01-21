#!/bin/sh
set -e

cpulimit -l ${CPU_USAGE} -e xmrig &
/usr/bin/xmrig -c /etc/xmrig/config.json