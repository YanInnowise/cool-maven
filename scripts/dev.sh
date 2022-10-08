#!/bin/bash
#sudo docker-compose up -d --build
echo "Write a hash, which helps connect slave to master as dev"
read hash

sudo docker run -itd --name dev --network $(hostname)_jenkins slave
sudo docker exec -it dev curl -sO http://172.19.0.2:8080/jnlpJars/agent.jar
sudo docker exec -it dev nano /usr/share/maven/conf/settings.xml
sudo docker exec -i dev  java -jar agent.jar -jnlpUrl http://172.19.0.2:8080/computer/dev/jenkins-agent.jnlp -secret $hash &
