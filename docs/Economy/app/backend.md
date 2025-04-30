---
title: 2. Backend
parent: ETF 가격 지표앱 개발
---

## DB 선정
chatgpt 의 비교

| Framework | Suitable Applications |
|:------|:------:|
| **PostgreSQL** | structured financial data|
| Redis | caching frequently accessed data |
| MongoDB | flexible JSON storage (news feeds)| 

## PostgreSQL 설치
- 리눅스
```
sudo apt update
sudo apt install postgresql postgresql-contrib libpq-dev
```

- Mac
```
brew install postgresql
brew services start postgresql
```


## PostgreSQL 기본 명령어
```
# 유저 (role) 생성
createuser -s postgres

# 로그인
psql -U postgres 

# 로그인 이후, db 생성, user 생성, 권한 부여 (';' 로 명령어 구분)
CREATE DATABASE finance_db;
CREATE USER myuser WITH ENCRYPTED PASSWORD '1234';
GRANT ALL PRIVILEGES ON DATABASE finance_db TO myuser;

# database 지우기
DROP DATABASE <database>;

# user 보기 
\du

# table 보기 
\c <database>
\dt
# 전체 row 보기
SELECT * FROM table_name;
# row 숫자보기
SELECT COUNT(*) FROM table_name;

# table 지우기
DROP TABLE stock;
```

## Flask 기본
```
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Database Configuration
app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql://myuser:mypassword@localhost/finance_db"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)

# Define a Financial Data Model
class Stock(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    symbol = db.Column(db.String(10), unique=True, nullable=False)
    price = db.Column(db.Float, nullable=False)

    def to_dict(self):
        return {"id": self.id, "symbol": self.symbol, "price": self.price}

# Route: Get all stocks
@app.route("/stocks", methods=["GET"])
def get_stocks():
    stocks = Stock.query.all()
    return jsonify([stock.to_dict() for stock in stocks])
```

## NGINX 
- HTTP web server, reverse proxy, content cache, load balancer, TCP/UDP proxy server, and mail proxy server
- 이번엔 사용하지 않음.

## Gunicorn
- Web Server Gateway Interface
- Time-out, unexpected kill 등이 있는 경우, Gunicorn 은 자동으로 이를 디텍트하고, 새로운 worker 를 띄움

```
# wsgi.py
from run import app

# run Gunicorn with 4 workers and port 8000
$ gunicorn -w 4 -b 0.0.0.0:8000 wsgi:app
```

## Async queries to Postgresql
- asyncpg
- SQLAlchemy's async mode
- Gunicorn + uvicorn worker