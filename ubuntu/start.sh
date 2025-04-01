#!/bin/bash

if [ ! -f ~/.bashrc ]; then
  cp /opt/bashrc ~/.bashrc
fi

if [ ! -f ~/.bash_profile ]; then
  cp /opt/bash_profile ~/.bash_profile
fi

/usr/sbin/sshd