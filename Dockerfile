FROM starlabio/centos-base:3
MAINTAINER David Esler <adam.schwalm@starlab.io>

# Install EPEL
RUN yum install -y epel-release && \
    yum clean all && \
    rm -rf /var/cache/yum/* /tmp/* /var/tmp/*

RUN yum install -y libidn-devel zlib-devel ncurses-devel dev86 iasl \
        gettext openssl-devel pciutils-devel libuuid-devel gcc \
        bzip2-devel xz-devel e2fsprogs e2fsprogs-devel yajl-devel mingw64-binutils \
        systemd-devel glibc-devel.i686 texinfo checkpolicy glib2-devel pixman-devel && \
        yum clean all && \
        rm -rf /var/cache/yum/* /tmp/* /var/tmp/*

COPY build_binutils /tmp/

RUN /tmp/build_binutils