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
CREATE USER human WITH ENCRYPTED PASSWORD '1234';
GRANT ALL PRIVILEGES ON DATABASE finance_db TO human;

# database 지우기
DROP DATABASE <database>;

# user 보기 
\du

# database 목록 보기
\l

# table 보기 
\c <database>
\dt
# 전체 row 보기
SELECT * FROM "table_name";
# row 숫자보기
SELECT COUNT(*) FROM "table_name";
# 모든 테이블의 row 숫자 보기
SELECT relname AS "table_name", n_live_tup AS row_count
FROM pg_stat_user_tables;

# row count 가 0 인 table 전부 지우기
DO $$
DECLARE
    r RECORD;
    row_count BIGINT;
BEGIN
    FOR r IN
        SELECT schemaname, tablename
        FROM pg_tables
        WHERE schemaname NOT IN ('pg_catalog', 'information_schema')
    LOOP
        EXECUTE format('SELECT COUNT(*) FROM %I.%I', r.schemaname, r.tablename) INTO row_count;
        IF row_count = 0 THEN
            EXECUTE format('DROP TABLE %I.%I CASCADE', r.schemaname, r.tablename);
            RAISE NOTICE 'Dropped table %.%', r.schemaname, r.tablename;
        END IF;
    END LOOP;
END$$;

# table 지우기
DROP TABLE stock;
```

## Trouble shooting
```
*Error*
HINT:  Is another postmaster (PID 470) running in data directory "/usr/local/var/postgresql@14"?
2025-08-05 23:37:37.865 KST [2346] FATAL:  lock file "postmaster.pid" already exists

*Solution*
$ rm /usr/local/var/postgresql@14/postmaster.pid
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

## crontab 을 활용한 daily update

```
# crontab 열고, 내용 기입
$ crontab -e
<minute> <hour> * * * <path/to/shellscriptfile>

# shell script 에 실행 권한 추가
chmod +x <path/to/shellscriptfile>
```
