# Create base image with java(openjdk) version 11
FROM openjdk:11

# Expose the application port to be acessible outside container
EXPOSE 9091

# Copy only support basic copying
ADD target/*.jar docker-spring.jar

# set images main command ENTRYPOINT ["executable", "param1", "param2"] or ENTRYPOINT command param1 param2
 ENTRYPOINT ["java","-jar","docker-spring.jar"]

# for setting environment variables in container ENV <key>=<value>

# ARG to be used to create arguments which can be used to pass argument during docker build

# For best practises on creating docker file
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

#
# docker build -t <image-name> <Dockerfile location>
# docker run -p <host-port>:<docker-port8080> <image-name>
# eval $(minikube docker-env) to link minikube docker to local docker
# eval $(minikube docker-env -u) to link minikube docker to local docker

