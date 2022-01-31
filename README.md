# kubernetesDeployment
Basic deployment in kubernetes 

create spring boot project

do clean install

create docker file

 docker build -t <image-name> <Dockerfile location>
 docker run -p <host-port>:<docker-port8080> <image-name>

minikube specific

 eval $(minikube docker-env) to link minikube docker to local docker
 eval $(minikube docker-env -u) to link minikube docker to local docker

In different shell use minikube image load <docker image name> to use locally built image
 
create kube deployment manifest file

use kubectl apply -f <filename>  to deploy to kubernetes
 
you can use kubeforwarder(https://github.com/pixel-point/kube-forwarder) to forward the load blancer port to local port for easy. access in local.
