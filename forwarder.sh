#!/bin/sh
set -x
echo 1:$1
echo 2:$2
socat TCP-LISTEN:$1 TCP:$2
