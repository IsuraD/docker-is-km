# Dockerfile for WSO2 Identity Server as Key Manager #
The Dockerfile defines the resources and instructions to build the Docker images with the WSO2 products and runtime configurations.

## Try it out
Quick steps to build the WSO2 Identity Server as Key Manager docker image and run in your local machine


* Add product packs and dependencies
    - Download and copy JDK 1.7 ([jdk-7u80-linux-x64.tar.gz](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html)) pack to `dockerfile/common/provision/default/files`.
    - Download the WSO2 Identity Server as Key Manager zip file (http://product-dist.wso2.com/downloads/api-manager/2.1.0/identity-server/wso2is-5.3.0.zip), and copy it to `dockerfile/common/provision/default/files`.

* Build the docker image
    - Navigate to `docker-is-km/dockerfile`.
    - Execute `build.sh` script and provide the product version.
        + `./build.sh -v 5.3.0`

* Docker run
    - Navigate to `docker-is-km/dockerfile`.
    - Execute `run.sh` script and provide the product version.
        + `./run.sh -v 5.3.0`

* Access management console
    -  To access the management console, use the docker host IP and port 9443.
        + `https:<DOCKER_HOST_IP>:9443/carbon`

## Detailed Configuration

* [Introduction] (https://docs.wso2.com/display/DF120/Introduction)

* [Building docker images] (https://docs.wso2.com/display/DF120/Building+Docker+Images)

* [Running docker images] (https://docs.wso2.com/display/DF120/Running+WSO2+Docker+Images)
