#!/bin/bash
echo "Write a hash, which helps connect slave to master as dev"
read hashik

sudo docker run -itd --name test --network $(hostname)_jenkins slave
sudo docker exec -it test curl -sO http://172.19.0.2:8080/jnlpJars/agent.jar
sudo docker exec -i test java -jar agent.jar -jnlpUrl http://172.19.0.2:8080/computer/test/jenkins-agent.jnlp -secret $hashik &

echo "Password for get first access into Nexus"
sudo docker exec -it nexus cat /nexus-data/admin.password
