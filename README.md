# docker-workshop

A challange
================


1. Prepare Hellow World application using your technology stack
2. Build Dokerfile for it
3. Setup Docker repository for images
4. Setup Jenkins using docker
5. Build your docker image using a Jenkins pipeline


===========================================
Managing containers commnads
===========================================

$ docker run container:version

[overvrite CMD with /bin/sh]
$ docker run -ti container:version /bin/sh


[mount volume]
$ docker run -v local_dir:/container_dir/ container:version 


[expose ports]
$ docker run p 50000:50000 container:version 


[add custom name to container]
$ docker run -n my_name container:version

[clean when container is done]
$ docker run --rm container:version


[daemon]
$ docker run -b container:version

[listing running containers]
$ docker ps
$ docker ps -a


$ docker stop container_name
$ docker kill container_name

$ docker rm container_name


===========================================
Building docker image
===========================================

https://docs.docker.com/engine/reference/commandline/build/

$ docker build -t my-image:latest .

Dockerfile:

FROM
RUN
COPY/ADD
CMD/EXEC


Check: https://hub.docker.com/search?q=&type=image
Interesting images: popular applications (nginx, mysql, etc.); linux distros: centos, alpine etc.



===========================================
Running jenkins:
===========================================
docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

 

===========================================
 Running repository:
===========================================

https://docs.docker.com/registry/deploying/

$ docker run -d -p 5000:5000 --restart=always --name registry registry:2

check: http://localhost:5000/v2/_catalog


Pushing image to repository:

docker pull ubuntu:16.04
docker tag ubuntu:16.04 localhost:5000/my-ubuntu
docker push localhost:5000/my-ubuntu


===========================================
Running Jenkins with Docker build support
===========================================

$ git clone https://github.com/mcj-krs/docker-workshop
then check jenkins-with-docker

