#!/bin/bash

echo "서버 구축 1입력, 서버 도우미 실행 2입력"
read choose

if [ "$choose" -eq 2 ]; then
    if [ -f "/usr/sbin/nginx" ]; then
        python3 serverHelper.py
        exit 0
    else
        echo "[Warning] nginx가 감지되지 않았습니다. 설치를 해주세요!"
        exit 0
    fi
fi

echo "nginx 서버 구축을 시작합니다... 조금만 기다려주세요."

if [ -f "/usr/sbin/nginx" ]; then
    echo "[Warning] 이미 nginx가 설치되어 있습니다! 계속 서버를 구축하시겠습니까? [y/n]"
    read answer
    if [ "$answer" != "y" ]; then
        echo "nginx 설치를 취소하셨습니다."
        exit 0
    fi
fi

yum install -y nginx
systemctl enable nginx
systemctl start nginx
firewall-cmd --add-service=http --permanent
firewall-cmd --reload

echo "nginx 서버 구축 완료!"
