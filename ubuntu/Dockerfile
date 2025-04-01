FROM ubuntu:24.04

MAINTAINER YeZhengMao yezhengmaolove@gmail.com

ARG http_proxy
ARG https_proxy

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai apt-get install -y --allow-change-held-packages \
    locales \
    build-essential \
    make \
    cmake \
    pkg-config \
    ninja-build \
    clang-15 \
    llvm-15 \
    ccache \
    openssh-server \
    tmux \
    iproute2 \
    neovim \
    nload \
    gdb \
    cloc \
    git \
    git-lfs \
    wget \
    curl \
    ripgrep \
    fzf \
    bat \
    fd-find \
    zoxide \
    graphviz \
    && curl -LsSf https://astral.sh/uv/install.sh | sh

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen

RUN mkdir /run/sshd \
    && echo 'root:root@123' | chpasswd \
    && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "AuthorizedKeysFile .ssh/authorized_keys" >> /etc/ssh/sshd_config \
    && echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config \
    && echo "StrictModes no" >> /etc/ssh/sshd_config

COPY bash_profile /opt/bash_profile
COPY bashrc /opt/bashrc
COPY start.sh /opt/start.sh

CMD ["/bin/bash", "-c", "/opt/start.sh"]