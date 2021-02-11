
![pulls](https://badgen.net/docker/pulls/scyto/nodelink?icon=docker&label=pulls)
![windows amd64](https://badgen.net/badge/icon/amd64?icon=windows&label)
![linux amd64](https://badgen.net/badge/liux/amd64?icon=https://simpleicons.now.sh/linux/fff&label)
![linux arm64](https://badgen.net/badge/liux/arm64?icon=https://simpleicons.now.sh/linux/fff&label)
![linux arm32v7](https://badgen.net/badge/liux/arm32v7?icon=https://simpleicons.now.sh/linux/fff&label)

# NodeLink v11 for ISY994i

This docker container is for folks wanting to use NodeLink for ISY994i
It is based on the information provided here:

<https://forum.universal-devices.com/topic/19214-nodelink-docker/>

## Why another container for this app

### Firstly this container strives to be as minimial as possible, as such

* it uses latest Microsoft dotNet5 Core Runtimes allowing for smaller than mono:latest or mono:slim
* dependencies are installed as part of docker file (please file a bug if you find a missing dependency)
* dockerfile optimized to reduce the number of layers and resulting image size

### Secondly it uses new dotNet core runtime version 5 and new v11 NodeLink

<https://forum.universal-devices.com/topic/23660-nodelink-latest-version-v0111/>

## Getting Started

### My full set of tags is as follows

```
scyto/nodelink:latest
```
This tags works on linux/amd64,arm,arm64, windows/amd64

### **IMPORTANT NOTE**
If you were previously using the v10 of this container you **must** delete the existing `nodelink.dll` abd `NodeLink.runtimeconfig.json` in your mapped volume or nodelink will fail to run.

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
