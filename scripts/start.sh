docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)
docker build -t serrodcal/wso2esb-5.0.0 .
docker run -d --name esb -p 9443:9443 -p 8280:8280 -p 8243:8243 -p 19444:19444 serrodcal/wso2esb-5.0.0