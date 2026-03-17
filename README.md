# 🚀 Nginx Starter

초보자도 쉽게 사용할 수 있는
**Nginx 설치 + 웹 기반 서버 관리 패널 프로젝트**

---

## 📌 프로젝트 소개

Nginx Starter는 리눅스 환경에서 Nginx를 빠르게 설치하고,
웹 브라우저를 통해 서버 상태를 확인하고 제어할 수 있도록 만든 입문용 프로젝트입니다.

기존의 단순 콘솔 기반 도구에서 확장하여,
**Flask 기반 웹 인터페이스로 서버를 관리할 수 있도록 개선되었습니다.**

---

## 🎯 프로젝트 목적

* 리눅스 서버에서 Nginx 직접 설치 및 실행 경험
* 쉘 스크립트를 이용한 서버 자동화
* Flask를 이용한 웹 기반 서버 관리 도구 구현
* 서버 로그 / 상태 확인을 웹으로 시각화
* Docker 기반 테스트 환경 구성

---

## 📂 프로젝트 구조

```
.
├── Dockerfile
├── index.html
├── README.md
├── serverHelper.py   ← Flask 웹 서버
└── serverInstaller.sh
```

---

## 📄 파일 설명

### 1. serverInstaller.sh

Nginx를 자동으로 설치하고 실행하는 쉘 스크립트입니다.

* root 권한 확인
* RedHat 계열 OS 검사
* nginx 설치 (yum)
* systemctl enable / start
* firewall-cmd HTTP 허용
* Flask 서버 실행 (serverHelper.py)

---

### 2. serverHelper.py (핵심)

Flask 기반 **웹 서버 관리 패널**입니다.

웹 브라우저에서 다음 기능을 제공합니다:

* Nginx 상태 확인 (`/status`)
* Access 로그 확인 (`/access-log`)
* Error 로그 확인 (`/error-log`)
* Nginx 재시작 (`/restart`)

👉 버튼 클릭으로 리눅스 명령을 실행하는 구조입니다.

---

### 3. index.html

웹 관리 페이지의 메인 화면입니다.

* 기능 버튼 제공
* Flask와 연동된 UI 역할

---

### 4. Dockerfile

Docker 환경에서 Nginx를 빠르게 실행하기 위한 설정입니다.

* nginx:alpine 기반
* index.html 제공
* 80 포트 오픈

---

## ⚙️ 실행 환경

### ✔ 리눅스 환경 (필수)

* Rocky Linux / CentOS / RHEL / AlmaLinux
* yum 사용 가능
* systemctl 사용 가능
* root 또는 sudo 권한

---

### ✔ Python

* Python 3.x
* Flask 설치 필요

```bash
python3 -m pip install flask
```

---

### ✔ 네트워크

* 포트 5000 열려 있어야 함

```bash
sudo firewall-cmd --add-port=5000/tcp --permanent
sudo firewall-cmd --reload
```

---

## 🚀 사용 방법

### 1. 저장소 클론

```bash
git clone https://github.com/m161awm/Nginx-Starter
cd 저장소이름
```

---

### 2. 설치 스크립트 실행

```bash
chmod +x serverInstaller.sh
sudo ./serverInstaller.sh
```

---

### 3. 웹 접속

```text
http://서버IP:5000
```

👉 웹에서 Nginx 상태 확인 및 제어 가능

---

## 🌐 웹 기능 설명

| 기능        | 설명             |
| --------- | -------------- |
| 상태 확인     | nginx 실행 상태 확인 |
| Access 로그 | 최근 요청 로그 확인    |
| Error 로그  | 오류 로그 확인       |
| 재시작       | nginx 서비스 재시작  |

---

## 🐳 Docker 실행 방법

```bash
docker build -t nginx-starter .
docker run -d -p 80:80 nginx-starter
```

접속:

```
http://localhost
```

---

## 🧠 이 프로젝트로 보여줄 수 있는 것

* 리눅스 서버 구축 경험
* Nginx 서비스 운영
* 쉘 스크립트 자동화
* Flask 웹 서버 개발
* 서버 명령어 웹 인터페이스 연결
* Docker 기반 서비스 실행

---

## ✅ 장점

* 웹 UI로 서버 관리 가능
* DevOps 흐름 경험 가능
* 초보자도 이해하기 쉬운 구조
* 실습 중심 프로젝트

---

## ⚠️ 한계점

* 인증/보안 기능 없음
* root 권한 명령 실행 위험성 존재
* 로그 전체 출력 (성능 문제 가능)
* 에러 처리 부족
* production 환경 부적합

---

## 🔧 향후 개선 방향

* 로그인 인증 기능 추가
* sudo 제한 명령 실행 구조 개선
* 로그 페이지네이션 적용
* nginx 설정 수정 기능 추가
* Docker + Flask 통합 구조 개선

---

## 📖 학습 포인트

* Flask 라우팅 구조 이해
* subprocess로 리눅스 명령 실행
* 웹 → 서버 명령 흐름 이해
* 서버 관리 자동화 기초
* DevOps 기본 개념 체험

---

## 💡 추천 대상

* DevOps 입문자
* 리눅스 서버 처음 배우는 사람
* Flask 기초 학습자
* 포트폴리오 프로젝트 만들고 싶은 사람

---

## 👤 제작자

m161awm
리눅스 / Nginx / DevOps 학습 프로젝트

---

## 📜 라이선스

본 프로젝트는 개인 학습 및 교육 목적으로 자유롭게 사용할 수 있습니다.
