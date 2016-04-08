FROM base/archlinux
MAINTAINER Dan Printzell <me@vild.io>

ADD mirrorlist /etc/pacman.d/mirrorlist

RUN pacman --noconfirm -Sy
RUN pacman --noconfirm -S pacman
RUN pacman-db-upgrade