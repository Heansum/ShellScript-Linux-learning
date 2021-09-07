#!/bin/bash

count=0

if [ -f .bashrc ]; then
  echo ".bashrc 파일이 존재합니다."
    for i in $(cat ~/.bashrc); do
      count=$((count + 1))
      echo "$count 번째 단어 $i 는 $(echo -n $i | wc -c) 글자입니다."
    done
  exit 0
else
  exit 1
fi


# 기본 형태
for [요소] in [반복 가능 오브젝트]; do
  [실행블록]
done
