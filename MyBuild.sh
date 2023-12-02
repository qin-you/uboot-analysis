#!/bin/sh

./mkconfig -A s5p_goni
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
