#!/bin/bash

if [ -f .bashrc ]; then
  echo ".bashrc 파일이 존재합니다."
  exit 0
elif [ -f .bash_profile ]; then
  echo ".bash_profile 파일이 존재합니다."
  exit 0
else
  exit 1
fi
