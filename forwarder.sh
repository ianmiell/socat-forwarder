#!/bin/sh

socat TCP-LISTEN:$1 TCP:$2
