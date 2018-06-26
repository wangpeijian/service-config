docker build -t service-config --build-arg port=9921 ./

docker rmi java
docker stop config9921
docker rm config9921

docker run -d --name="config9921" -p 9921:9921 service-config