C:\"Program Files"\Docker\Docker\DockerCli.exe -SwitchLinuxEngine
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t scyto/nodelink:latest --push -f Dockerfile.linux .
C:\"Program Files"\Docker\Docker\DockerCli.exe -SwitchWindowsEngine
docker build  -t scyto/nodelink:windows.amd64 -f Dockerfile.windows.amd64 .
docker push scyto/nodelink:windows.amd64
C:\"Program Files"\Docker\Docker\DockerCli.exe -SwitchLinuxEngine
docker buildx imagetools create --append -t scyto/nodelink:latest scyto/nodelink:windows.amd64