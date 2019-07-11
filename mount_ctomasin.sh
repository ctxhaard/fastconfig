#!/bin/bash
#echo decrypting secure partition...
#echo Type the partition decrypt password NOT THE DOMAIN PASSWORD!
#udisksctl unlock -b /dev/sda2
#udisksctl mount -b /dev/dm-0

#ORIGIN_BASE=/media/$(id -un)/texa-enc
#echo mounting secure folders...
#mkdir -p ~/development
#sudo mount --bind ${ORIGIN_BASE}/development ~/development

#mkdir -p ~/DocumentsReserved
#sudo mount --bind ${ORIGIN_BASE}/DocumentsReserved ~/DocumentsReserved
#sudo mount --bind ${ORIGIN_BASE}/opt /opt
echo mounting remote folders...
echo mounting remote documents...
mkdir -p ~/Documents
sudo mount -t cifs //texa-nas.italia.texa.org/homeusers/ctomasin ~/Documents -o username=ctomasin,noexec,uid=$(id -u),gid=$(id -g),file_mode=0700
echo mounting remote temp...
mkdir -p ~/Temp
sudo mount -t cifs //texa-nas.italia.texa.org/pub/temp ~/Temp -o username=ctomasin,noexec,uid=$(id -u),gid=$(id -g)

#echo mounting folder on external disk to use with Virtual Manager...
#mkdir -p /opt/virt-manager/
#sudo mount --bind /media/$(id -nu)/ctomasin-ext/virt-manager /opt/virt-manager
echo done.

