#!/bin/sh

tar -cf calamares-config.tar.gz calamares-config/

makepkg -s --sign

rm -r calamares-config.tar.gz
