docker-compose up -d

echo Waiting for jenkins start...

sleep 20

echo your jenkins password is

docker exec -it treasure_jenkins_1 cat /var/jenkins_home/secrets/initialAdminPassword
