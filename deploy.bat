docker rmi service-config

docker build -t service-config --build-arg port=9921 ./

docker stop config9921
docker rm config9921

docker run -i --net=host --name="config9921" -p 9921:9921 service-config