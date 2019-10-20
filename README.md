# NodeLink for ISY994i

This docker container is for folks wanting to use NodeLink for ISY994i
It is based on the information provided here:

https://forum.universal-devices.com/topic/19214-nodelink-docker/

## Why another container for this app?
This container strives to be as minimial as possible, as such:
* it uses mono:slim not mono:latest to remove components
* dependencies are installed as part of docker file (please file a bug if you find a missing dependency)
* dockerfile optimized to reduce the number of layers and resulting image size


## Getting Started
To install this container on the default bridge use the following docker run

    docker run --name=NodeLink -v $PWD$:/NodeLink -v /etc/localtime:/etc/localtime:rw -p 8090:8090 scyto/NodeLink



