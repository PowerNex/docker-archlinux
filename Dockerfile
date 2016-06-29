# archlinux
# VERSION 0.3.0
#
# A fully updated Arch Linux base & base-devel image

FROM base/archlinux
MAINTAINER Dan Printzell <me@vild.io>

RUN curl -o /etc/pacman.d/mirrorlist "https://www.archlinux.org/mirrorlist/?country=all&protocol=https&ip_version=6&use_mirror_status=on" && \
    sed -i 's/^#//' /etc/pacman.d/mirrorlist
RUN pacman-key --populate && \
    pacman-key --refresh-keys && \
    pacman -Sy --noprogressbar --noconfirm && \
		pacman -S --force openssl --noconfirm && \
		pacman -S pacman --noprogressbar --noconfirm && \
		pacman-db-upgrade

RUN pacman -Sy --noconfirm archlinux-keyring
	
RUN pacman -Syyu base-devel --noprogressbar --noconfirm
