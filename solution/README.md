1  yum install -y yum-utils device-mapper-persistent-data lvm2
    2   yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    3  cd /etc/yum.repos.d/
    4  ls -l
    5  vi docker-ce.repo 
    6  yum install docker-ce docker-ce-cli containerd.io
    7  curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    8  chmod +x /usr/local/bin/docker-compose
    9  docker-compose -version
   10  docker pull infracloudio/csvserver:latest
   11  systemctl enable docker
   12  docker pull infracloudio/csvserver:latest
   13  systemctl start  docker
   14  docker pull infracloudio/csvserver:latest
   15  docker pull prom/prometheus:v2.22.0
   16  cd /home/cloud_user/
   17  s -l
   18  ls -l
   19  yum install git
   20  ls -l
   21  git init
   22  git clone https://github.com/infracloudio/csvserver.git
   23  ls -l
   24  cd csvserver/
   25  ls -l
   26  cat README.md 
   27  ls -l
   28  cd solution/
   29  ls -l
   30  docker run -d infracloudio/csvserver:latest
   31  docker ps -a
   32  docker logs fe07
   33  vi gencv.sh
   34  chmod +x gencv.sh 
   35  chmod 777 gencv.sh 
   36  ./gencv.sh 
   37  ls -l
   38  pwd
   39  docker run -d -v /home/cloud_user/csvserver/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
   40  docker ps -a
   41  docker exec -it 6c0c bash
   42  cd /home/cloud_user/
   43  ls -l
   44  cd csvserver/
   45  ls -l
   46  cd solution/
   47  ls -l
   48  docker ps -a
   49  docker run -d -v /home/cloud_user/csvserver/solution/inputFile:/csvserver/inputdata -p 9393:9300 infracloudio/csvserver:latest
   50  curl http://localhost:9393
   51  docker ps -a
   52  docker stop 652a
   53  docker stop 6c0c
   54  docker prune
   55  docker container prune
   56  docker run -d -v /home/cloud_user/csvserver/solution/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER = Orange -p 9393:9300 infracloudio/csvserver:latest
   57  docker run -d -v /home/cloud_user/csvserver/solution/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER='Orange' -p 9393:9300 infracloudio/csvserver:latest
   58  docker ps -a

