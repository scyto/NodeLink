
![pulls](https://badgen.net/docker/pulls/scyto/nodelink?icon=docker&label=pulls)
![windows amd64](https://badgen.net/badge/icon/amd64?icon=windows&label)
![linux amd64](https://badgen.net/badge/liux/amd64?icon=https://simpleicons.now.sh/linux/fff&label)
![linux arm64](https://badgen.net/badge/liux/arm64?icon=https://simpleicons.now.sh/linux/fff&label)
![linux arm32v7](https://badgen.net/badge/liux/arm32v7?icon=https://simpleicons.now.sh/linux/fff&label)

# NodeLink v10 for ISY994i

This docker container is for folks wanting to use NodeLink for ISY994i
It is based on the information provided here:

<https://forum.universal-devices.com/topic/19214-nodelink-docker/>

## Why another container for this app

### Firstly this container strives to be as minimial as possible, as such

* it uses latest Microsoft dotNet3 Core Runtimes allowing for smaller than mono:latest or mono:slim
* dependencies are installed as part of docker file (please file a bug if you find a missing dependency)
* dockerfile optimized to reduce the number of layers and resulting image size

### Secondly it uses new dotNet core runtime version 3.1 and new v10 NodeLink

<https://forum.universal-devices.com/topic/27593-nodelink-moved-to-net-core-3/?do=findComment&comment=271922>

## Getting Started

### My full set of tags is as follows

```
scyto/nodelink:latest
dotNet 3.1.0-preview1.19506.1 - nodelink 10.x - linux/amd64,arm,arm64, windows/amd64
```

### Linux Version

For linux  use the following command to run the container - replace $pwd$ with path to your host mapped files as required (where nodelink will store its config)..

`docker run --name=NodeLink -v $PWD$:/NodeLink -p 8090:8090 scyto/nodelink`

You can use the TZ= env var to set the time in the container.

### Windows Version

For windows use the following command to run the container -replace $pwd$ with path to your host mapped files as required (where nodelink will store its config)..

`docker run --name=NodeLink -v $PWD$:C:\NodeLink -p 8090:8090 scyto/nodelink`

You can use the TZ= env var to set the time in the container.

## Feedback

Let me know if you find issues. You can bug them on the dev github branch. Dockerhub page here <https://hub.docker.com/r/scyto/nodelink>
