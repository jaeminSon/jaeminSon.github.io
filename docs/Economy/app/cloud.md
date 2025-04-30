---
title: 5. 클라우드
parent: 저평가 알람앱 개발
---

[(참고 블로그)](https://brunch.co.kr/@topasvga/168)

## Google Cloud
- 3개월 300달러 무료 이용 할수 있다고 해서 사용
- 예전에 만든 아이디가 있어서 거기에 무료 이용 적용됨.
- 아무것도 안돌려도 하루에 만원꼴로 나가서, 폐지

## Google cloud 서비스 비교 (Gemini 답변 요약)
- Cloud Run: stateless, ephemeral, single threaded (비싸다는 blog 가 있어서 채택하지 않음 [(blog)](https://dev.to/code42cate/serverless-is-a-scam-5fc0))
- Cloud Run Functions: stateless, designed for event-driven workloads and functions
- GKE: flexible, advanced features (service meshes, custom resource definitions, advanced deployments)
- App Engine: stateless, a fully managed platform for hosting web applications, simplifying development and infrastructure management.

## Chat-GPT high level plan
1. Set up your PostgreSQL database (Cloud SQL or inside GKE)
2. Containerize your Flask app (Docker)
3. Deploy your container to GKE (via Deployment and Service YAML)
4. Connect Flask app to PostgreSQL securely


### PostgreSQL 세팅
- [gcloud install link](https://cloud.google.com/sdk/docs/install)

```
$ gcloud sql instances create my-postgres \
  --database-version=POSTGRES_15 \
  --cpu=1 --memory=4GB --region=asia-northeast3
$ gcloud sql databases create stock --instance=my-postgres
$ gcloud sql users set-password postgres --instance=my-postgres --password=my-password
```

### Docker 이미지 push
- [docker install](https://www.docker.com/)
- Mac 에서 cli 설치를 위해서 brew install docker 이 필요할수 있음.
- Dockerfile 작성 후, push

```
gcloud auth configure-docker
docker login -u <username>
docker build -t gcr.io/YOUR_PROJECT_ID/flask-backend:v1 .
docker push gcr.io/YOUR_PROJECT_ID/flask-backend:v1
```

### GKE

```
gcloud container clusters create flask-cluster --num-nodes=1 --region=asia-northeast3
gcloud container clusters get-credentials flask-cluster --region=asia-northeast3
```


## Security
- Cloud SQL securely using Cloud SQL Proxy

## Trouble Shooting
- Mac 에서 docker login -u <username> 시 Error saving credentials: error storing credentials - err: exec: "docker-credential-desktop": executable file not found in $PATH, out: 

 ~/.docker/config.json 에서 다음과 같이 설정되어있는지 확인.

```
{
  "credsStore": "osxkeychain"
}
```


- denied: Unauthenticated request. Unauthenticated requests do not have permission~ 에러의 경우, gcloud login 을 한뒤, 해당 terminal 로 docker push 해야함.

```
gcloud auth login
```

