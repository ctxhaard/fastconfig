#!/bin/bash
udisksctl unlock -b /dev/sda2
udisksctl mount -b /dev/dm-0

ORIGIN_BASE=/media/$(id -un)/texa-enc
sudo mount --bind ${ORIGIN_BASE}/development ~/development
sudo mount --bind ${ORIGIN_BASE}/DocumentsReserved ~/DocumentsReserved
sudo mount --bind ${ORIGIN_BASE}/opt /opt
sudo mount -t cifs //texa-nas.italia.texa.org/homeusers/ctomasin ~/Documents -o username=ctomasin,noexec,uid=$(id -u),gid=$(id -g),file_mode=0700
sudo mount -t cifs //texa-nas.italia.texa.org/pub/temp ~/Temp -o username=ctomasin,noexec,uid=$(id -u),gid=$(id -g)

