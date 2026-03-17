from flask import Flask ,render_template
import subprocess
app = Flask(__name__)

ACCESS_LOG = "/var/log/nginx/access.log"
ERROR_LOG = "/var/log/nginx/error.log"
SERVER_IP = 1

@app.route('/')
def home():
    return render_template("index.html")
@app.route('/status')
def status():
    result = subprocess.run(
        ["systemctl", "status", "nginx", "--no-pager"],
        capture_output=True,
        text=True
    )
    return f"<pre>{result.stdout}</pre>"
@app.route('/access-log')
def access_log():
    with open(ACCESS_LOG, "r") as f:
        log_data = f.read()
    return f"<pre>{log_data}</pre>"
@app.route('/error-log')
def error_log():
    with open(ERROR_LOG, "r") as f:
        error_log = f.read()
    return f"<pre>{error_log}</pre>"        

@app.route('/restart',methods=["POST"])
def restart():
    subprocess.run(
         ["systemctl", "restart", "nginx"],
        capture_output=True,
        text=True
    )
    return "<pre>재시작 완료</pre>"

app.run(host="0.0.0.0",port=5000)