docker build -t flaskapp .
docker tag flaskapp gcr.io/ultra-function-402414/flaskapp
docker push gcr.io/ultra-function-402414/flaskapp
docker stop flaskapp
docker rm flaskapp
docker stop some-mysql
docker rm some-mysql
docker run -p 3306:3306 --name some-mysql -e MYSQL_ROOT_PASSWORD=dacjd156n. -d mysql:8.0
docker pull gcr.io/ultra-function-402414/flaskapp
docker run -p 80:5000 -d --name flaskapp --link some-mysql:some-mysql gcr.io/ultra-function-402414/flaskapp
