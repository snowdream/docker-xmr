#!/bin/bash
set -e

cpulimit -l ${CPU_USEAGE} -e xmrig &
/usr/bin/xmrig -c /etc/xmrig/config.json