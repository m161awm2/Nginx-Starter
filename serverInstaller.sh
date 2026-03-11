#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    echo "이 프로그램은 sudo 권한이 필요합니다."
    exit 1
fi
echo "███╗   ███╗ ██╗  ██████╗  ██╗  █████╗  ██╗    ██╗ ███╗   ███╗"
echo "████╗ ████║███║ ██╔════╝ ███║ ██╔══██╗ ██║    ██║ ████╗ ████║"
echo "██╔████╔██║╚██║ ███████╗ ╚██║ ███████║ ██║ █╗ ██║ ██╔████╔██║"
echo "██║╚██╔╝██║ ██║ ██╔═══██╗ ██║ ██╔══██║ ██║███╗██║ ██║╚██╔╝██║"
echo "██║ ╚═╝ ██║ ██║ ╚██████╔╝ ██║ ██║  ██║ ╚███╔███╔╝ ██║ ╚═╝ ██║"
echo "╚═╝     ╚═╝ ╚═╝  ╚═════╝  ╚═╝ ╚═╝  ╚═╝  ╚══╝╚══╝  ╚═╝     ╚═╝"
echo "Server Installer"
echo "-------------------------------------------------------------------"
echo "입력. 서버 자동구축 1  
서버 도우미 실행 2"
read choose

if [ "$choose" = 2 ]; then
    if [ -f "/usr/sbin/nginx" ]; then
        python3 serverHelper.py
        exit 0
    else
        echo "[Warning] nginx가 감지되지 않았습니다. 설치를 해주세요!"
        exit 0
    fi
elif [ "$choose" != 1 ]; then
    echo "[Warning] 정수 1이나 2를 입력해주세요."
    exit 1
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

if [ ! -f "/usr/sbin/nginx" ]; then
    echo "[Warning] nginx 설치를 실패하였습니다!"
    exit 0
fi
systemctl enable nginx
systemctl start nginx
firewall-cmd --add-service=http --permanent
firewall-cmd --reload

echo "nginx 서버 구축 완료!"
