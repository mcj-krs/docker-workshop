mkdir -p ~/jenkins_home
cd

docker run --name jenkins-docker \
	-d \
	--rm \
	-p 8080:8080 \
	-v jenkins_home:/var/jenkins_home \
	-v /var/run/docker.sock:/var/run/docker.sock \
	jenkins-with-docker

