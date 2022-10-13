#-------------install java for jenkins -------------------
sudo apt install default-jre
sudo apt update
#-------install docker-----------------------
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
#------------------------------------------------
#-------install jenkins--------------------------------
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins.service
#sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw enable
#sudo ufw status
#-----------------------------------------------------------
sudo apt update
#-----------------------install docker compose----------------------------
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
#-------------------------------------------------------------
sudo apt update
#--------git is pre-installed in ubuntu ------------------------
# sudo apt-get install git
#------------------------------------------------------
#---------------- sudo permission to docker user------------------------------
#-------------------------------------manual commands------------------------------------------
#sudo groupadd docker
#sudo su
#usermod -a -G sudo docker
#-----------------------------------------------
# sudo permission to jenkins user----------------------------------
#sudo su
#usermod -a -G sudo jenkins

#-------------------------------------------------------------------
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword


