#!/bin/bash
set -x
echo 1:$1
echo 2:$2
socat TCP-LISTEN:$1,fork TCP:$2
