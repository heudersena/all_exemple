# https://youtu.be/mZ-pRINmPcg

cfdisk /dev/  APERTA TAB

mkdir /mnt/nomedapasta

mount -t ntfs /dev/suapartição  /mnt/nomedapasta


# MONTAR AUTOMATICAMENTE QUANDO INICIAR O LINUX
blkid
nano /etc/fstab
UUID=65516664D6ADA6DA6DA5D6A  /mnt/nomedapasta ntfs default 0 0