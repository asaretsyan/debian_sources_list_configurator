#!/bin/bash

DEBIAN_RELEASE=`cat /etc/*-release 2> /dev/null | grep PRETTY_NAME | awk -F "=" {'print $2'} | awk -F "(" {'print $2'} | awk -F ")" {'print $1'}`

echo "" > /etc/apt/sources.list
echo "deb http://deb.debian.org/debian $DEBIAN_RELEASE main contrib non-free" > /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian $DEBIAN_RELEASE main contrib non-free" >> /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian-security/ $DEBIAN_RELEASE-security main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian-security/ $DEBIAN_RELEASE-security main contrib non-free" >> /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian $DEBIAN_RELEASE-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian $DEBIAN_RELEASE-updates main contrib non-free" >> /etc/apt/sources.list








