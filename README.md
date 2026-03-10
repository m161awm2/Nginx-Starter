<h1 align="center">Nginx 스타터 패키지</h1>

<p align="center">
  초보자도 쉽게 사용할 수 있는<br>
  Nginx 설치 / 실행 / 확인 / Docker 테스트용 스타터 패키지
</p>

<hr>

<h2>📌 프로젝트 소개</h2>
<p>
  <strong>Nginx 스타터 패키지</strong>는 리눅스 환경에서 Nginx 웹서버를 빠르게 설치하고,
  간단한 상태 확인을 할 수 있도록 만든 입문용 프로젝트입니다.
</p>

<p>
  이 프로젝트에는 다음과 같은 구성요소가 포함되어 있습니다.
</p>

<ul>
  <li>Nginx를 자동 설치하고 실행하는 쉘 스크립트</li>
  <li>로그 확인 및 서비스 상태 확인을 위한 Python 헬퍼 프로그램</li>
  <li>웹서버 정상 동작 여부를 확인할 수 있는 HTML 테스트 페이지</li>
  <li>Docker로 간단하게 실행할 수 있는 Dockerfile</li>
</ul>

<p>
  이 프로젝트의 목적은 실무용 대규모 배포 시스템을 만드는 것이 아니라,
  <strong>Nginx 웹서버의 기본 구조와 서버 자동화 흐름을 직접 연습해보는 것</strong>에 있습니다.
</p>

<hr>

<h2>🎯 프로젝트 목적</h2>
<ul>
  <li>리눅스 서버 환경에서 Nginx를 직접 설치해보기</li>
  <li>쉘 스크립트로 서버 설치 과정을 자동화해보기</li>
  <li>웹서버 서비스 시작 및 상태 확인 흐름 익히기</li>
  <li>Python으로 간단한 서버 보조 도구 만들어보기</li>
  <li>Docker 기반으로 정적 웹페이지 실행해보기</li>
</ul>

<hr>

<h2>📂 프로젝트 구조</h2>

<pre><code>.
├── Dockerfile
├── index.html
├── README.md
├── serverHelper.py
└── serverInstaller.sh
</code></pre>

<hr>

<h2>📄 파일 설명</h2>

<h3>1. <code>serverInstaller.sh</code></h3>
<p>
  리눅스 환경에서 Nginx를 자동으로 설치하고 실행하기 위한 쉘 스크립트입니다.
</p>

<ul>
  <li>Nginx 설치 여부 확인</li>
  <li><code>yum</code>을 사용한 Nginx 설치</li>
  <li><code>systemctl enable nginx</code>로 부팅 시 자동 시작 설정</li>
  <li><code>systemctl start nginx</code>로 즉시 실행</li>
  <li><code>firewall-cmd</code>를 사용한 HTTP 포트 허용</li>
</ul>

<p>
  사용자가 직접 명령어를 하나씩 입력하지 않아도,
  기본적인 웹서버 실행 환경을 빠르게 만들 수 있도록 구성되어 있습니다.
</p>

<h3>2. <code>serverHelper.py</code></h3>
<p>
  Nginx 서버 상태를 간단하게 확인하기 위한 Python 보조 프로그램입니다.
</p>

<ul>
  <li>Nginx access log 확인</li>
  <li>Nginx error log 확인</li>
  <li>Nginx 서비스 상태 확인</li>
</ul>

<p>
  리눅스 명령어를 바로 입력하지 않아도,
  간단한 메뉴 방식으로 로그와 상태를 볼 수 있게 만든 도구입니다.
</p>

<h3>3. <code>index.html</code></h3>
<p>
  Nginx가 정상적으로 웹페이지를 제공하는지 확인하기 위한 기본 테스트 페이지입니다.
</p>

<p>
  서버 설치 후 브라우저에서 접속했을 때 이 페이지가 보이면,
  Nginx가 정상적으로 동작 중이라는 것을 확인할 수 있습니다.
</p>

<h3>4. <code>Dockerfile</code></h3>
<p>
  Docker 환경에서 Nginx를 빠르게 실행하기 위한 설정 파일입니다.
</p>

<ul>
  <li><code>nginx:alpine</code> 이미지를 기반으로 사용</li>
  <li><code>index.html</code>을 기본 웹 루트에 복사</li>
  <li>80번 포트 오픈</li>
  <li>Nginx를 포그라운드 실행</li>
</ul>

<p>
  별도의 리눅스 서버 설치 없이도 Docker만 있으면 빠르게 테스트할 수 있습니다.
</p>

<hr>

<h2>⚙️ 실행 환경</h2>

<h3>리눅스 설치 모드</h3>
<ul>
  <li>Rocky Linux / CentOS / RHEL / AlmaLinux 계열</li>
  <li><code>yum</code> 사용 가능 환경</li>
  <li><code>systemctl</code> 사용 가능 환경</li>
  <li>root 권한 또는 sudo 권한 필요</li>
  <li>방화벽 설정 시 <code>firewalld</code> 필요</li>
</ul>

<h3>Python 헬퍼 모드</h3>
<ul>
  <li>Python 3 설치 필요</li>
  <li>Nginx가 이미 설치되어 있어야 함</li>
  <li>로그 파일을 읽을 수 있는 권한 필요</li>
</ul>

<h3>Docker 모드</h3>
<ul>
  <li>Docker 설치 필요</li>
  <li>Docker daemon 실행 중이어야 함</li>
</ul>

<hr>

<h2>🚀 사용 방법</h2>

<h3>1. 저장소 클론</h3>
<pre><code>git clone https://github.com/사용자이름/저장소이름.git
cd 저장소이름
</code></pre>

<h3>2. 설치 스크립트 실행</h3>
<pre><code>chmod +x serverInstaller.sh
sudo ./serverInstaller.sh
</code></pre>

<p>
  위 명령어를 실행하면 Nginx 설치, 서비스 등록, 실행,
  그리고 HTTP 포트 허용까지 자동으로 진행됩니다.
</p>

<h3>3. 브라우저에서 접속</h3>
<pre><code>http://서버IP</code></pre>

<p>
  브라우저에서 서버 IP로 접속했을 때 <code>index.html</code> 페이지가 보이면 성공입니다.
</p>

<hr>

<h2>🐍 Python 헬퍼 프로그램 사용</h2>

<p>
  아래 명령어로 실행할 수 있습니다.
</p>

<pre><code>python3 serverHelper.py</code></pre>

<p>
  프로그램 실행 후 메뉴에서 원하는 기능을 선택할 수 있습니다.
</p>

<ul>
  <li><strong>1</strong> : access log 확인</li>
  <li><strong>2</strong> : error log 확인</li>
  <li><strong>3</strong> : nginx 상태 확인</li>
</ul>

<p>
  리눅스 명령어를 직접 입력하지 않고도,
  간단한 서버 점검을 할 수 있도록 만든 보조 도구입니다.
</p>

<hr>

<h2>🐳 Docker 실행 방법</h2>

<h3>1. 이미지 빌드</h3>
<pre><code>docker build -t nginx-starter .</code></pre>

<h3>2. 컨테이너 실행</h3>
<pre><code>docker run -d -p 80:80 nginx-starter</code></pre>

<h3>3. 브라우저에서 확인</h3>
<pre><code>http://localhost</code></pre>

<p>
  정상적으로 실행되면 Docker 컨테이너 안의 Nginx가 실행되고,
  사용자 정의 <code>index.html</code> 페이지가 표시됩니다.
</p>

<hr>

<h2>🧠 이 프로젝트로 보여줄 수 있는 것</h2>
<ul>
  <li>기본적인 리눅스 서버 구축 경험</li>
  <li>Nginx 설치 및 서비스 제어 경험</li>
  <li>쉘 스크립트를 통한 자동화 경험</li>
  <li>Python을 활용한 간단한 서버 관리 도구 제작 경험</li>
  <li>Docker 기반 웹서버 실행 경험</li>
  <li>정적 웹페이지 배포 기초 이해</li>
</ul>

<hr>

<h2>✅ 장점</h2>
<ul>
  <li>초보자도 구조를 이해하기 쉬움</li>
  <li>리눅스 / Nginx / Python / Docker를 한 프로젝트에서 경험 가능</li>
  <li>서버 구축 흐름을 직접 연습할 수 있음</li>
  <li>입문 포트폴리오로 활용 가능</li>
</ul>

<hr>

<h2>⚠️ 한계점</h2>
<ul>
  <li>실무용 배포 시스템 수준은 아님</li>
  <li><code>yum</code> 기반 리눅스 환경에 의존적임</li>
  <li>예외 처리와 오류 대응이 부족함</li>
  <li>Python 헬퍼 기능이 단순함</li>
  <li>HTTPS / SSL 설정이 없음</li>
  <li>리버스 프록시 설정이 없음</li>
  <li>사용자 정의 Nginx 설정 파일이 포함되어 있지 않음</li>
</ul>

<hr>

<h2>🔧 향후 개선 방향</h2>
<ul>
  <li><code>apt</code> 기반 Ubuntu / Debian 지원 추가</li>
  <li>쉘 스크립트 예외 처리 강화</li>
  <li>Python 입력값 검증 추가</li>
  <li>Nginx 설정 파일 자동 배포 기능 추가</li>
  <li>SSL 적용 예제 추가</li>
  <li>Docker Compose 지원 추가</li>
  <li>로그 확인 기능 개선</li>
  <li>배포 후 상태 점검 자동화 추가</li>
</ul>

<hr>

<h2>📖 학습 포인트</h2>
<p>
  이 프로젝트를 통해 다음과 같은 개념을 연습할 수 있습니다.
</p>

<ul>
  <li>리눅스에서 웹서버를 설치하는 방법</li>
  <li><code>systemctl</code>로 서비스 시작 / 등록하는 방법</li>
  <li>방화벽에서 HTTP 포트를 여는 방법</li>
  <li>Nginx가 정적 HTML 페이지를 서비스하는 방식</li>
  <li>Docker로 웹서버를 컨테이너화하는 방법</li>
</ul>

<hr>

<h2>💡 추천 사용 대상</h2>
<ul>
  <li>리눅스 서버 구축을 처음 연습하는 사람</li>
  <li>Nginx를 처음 다뤄보는 사람</li>
  <li>클라우드 / 데브옵스 입문 포트폴리오를 만들고 싶은 사람</li>
  <li>간단한 정적 웹서버 테스트 환경이 필요한 사람</li>
</ul>

<hr>

<h2>👤 제작자</h2>
<p>
  제작자: <strong>m161awm</strong><br>
  리눅스, Nginx, Docker, 자동화를 학습하기 위한 입문 프로젝트
</p>

<hr>

<h2>📜 라이선스</h2>
<p>
  본 프로젝트는 개인 학습 및 교육 목적으로 자유롭게 사용할 수 있습니다.
</p>
