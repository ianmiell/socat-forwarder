#!/bin/bash
set -x
echo 1:$1
echo 2:$2
socat -d -d -d -d TCP4-LISTEN:$1,fork,reuseaddr TCP:$2
