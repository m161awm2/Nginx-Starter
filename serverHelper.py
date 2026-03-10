import subprocess
print("서버 도우미가 실행됩니다.")
ACCESS_LOG = "/var/log/nginx/access.log"
ERROR_LOG = "/var/log/nginx/error.log"
print("======= 선 택 =======")
print("1. 접속 로그 확인\n2.오류 로그 확인\n3.nginx 상태 확인\n4.종료")
while 1:
    choice = int(input())
    if choice == 1:
        with open(ACCESS_LOG, "r") as f:
            print(f.read())
    elif choice == 2:
        with open(ERROR_LOG, "r") as f:
            print(f.read())
    elif choice == 3:
        subprocess.run(["systemctl", "status", "nginx", "--no-pager"])

    elif choice == 4:
        print("프로그램을 종료합니다.")
        break
    else:
        print("?")
