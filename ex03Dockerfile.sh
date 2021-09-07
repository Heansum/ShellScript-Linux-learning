#!/bin/bash

if [ -f .bashrc ]; then
  echo ".bashrc 파일이 존재합니다."
elif [ -f .bash_profile ]; then
  echo ".bash_profile 파일이 존재합니다."
else
  exit
fi

# 기본 형태
if [조건]; then
  (실행 블록)
else
  (실행 블록)
fi
