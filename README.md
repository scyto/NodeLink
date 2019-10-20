# NodeLink for ISY994i

This docker container is for folks wanting to use NodeLink for ISY994i
It is based on the information provided here:

https://forum.universal-devices.com/topic/19214-nodelink-docker/

## Why another container for this app?
### Firstly this container strives to be as minimial as possible, as such:
* it uses latest Microsoft dotNet3 Core Runtimes allowing for smaller than mono:latest or mono:slim
* dependencies are installed as part of docker file (please file a bug if you find a missing dependency)
* dockerfile optimized to reduce the number of layers and resulting image size

### Secondly it uses new dotNet core runtime version 3 and new v10 NodeLink 
https://forum.universal-devices.com/topic/27593-nodelink-moved-to-net-core-3/?do=findComment&comment=271922

## Getting Started
To install this container on the default bridge use the following docker run

    docker run --name=NodeLink -v $PWD$:/NodeLink -v /etc/localtime:/etc/localtime:rw -p 8090:8090 scyto/NodeLink



