<h1>NGINX STARTER</h1> 

이 프로젝트는 <strong>Nginx 설치에 어려움을 느끼거나 Nginx 설정에 어려움을 느낄 때 자동적으로 설정해주고</strong>, <strong>파이썬 코드로 Nginx서버 로그 관리를 더욱 편하게 할 수 있도록</strong> 도와줄수 있는 통합 패키지 입니다.

---

## 📂 파일 구성 및 역할

| 파일명 | 역할 설명 |
| :--- | :--- |
| **index.html** | 서버 구축 완료 시 보여질 기본 웹 페이지입니다.  |
| **serverInstaller.sh** | Nginx 설치, 서비스 등록 및 방화벽 설정을 자동화하는 쉘 스크립트입니다. |
| **serverHelper.py** | 설치된 Nginx의 접속/오류 로그 확인 및 상태를 모니터링하는 도구입니다. |
| **Dockerfile** | Nginx 서비스를 가벼운 Alpine 리눅스 기반 컨테이너로 빌드하기 위한 설정입니다. |

---

## 🛠 사용 방법

### 1. 리눅스 로컬 환경 (CentOS/RHEL 계열)
`serverInstaller.sh` 스크립트를 통해 서버 설치와 도우미 실행을 통합 관리할 수 있습니다.

```bash
# 1. 실행 권한 부여
chmod +x serverInstaller.sh

# 2. 스크립트 실행
./serverInstaller.sh

# 이미지 빌드
docker build -t nginx-starter .

# 컨테이너 실행 (호스트 80번 포트 연결)
docker run -d -p 80:80 nginx-starter
