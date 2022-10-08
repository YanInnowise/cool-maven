sudo docker-compose up -d
sudo docker build -f Docker/Dockerfile -t slave .
echo "Password for first access into Jenkins"
sleep 10 
sudo docker exec -it main cat /var/jenkins_home/secrets/initialAdminPassword
cd scripts/
sudo ./dev.sh
