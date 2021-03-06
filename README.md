### Traditional Docker Build

- docker build original code

```
docker build --no-cache -t spursyy/href-counter:build . -f Dockerfile.build
```

- check result

```
docker run -e url=https://www.cnblogs.com/ spursyy/href-counter:build
```

- check image size

![check-tag-build-size](https://github.com/spursy/MultiStagesDocker/blob/master/check-tag-build-size.png?raw=true)

### Traditional Docker Build From Alpine

- check images size

![check-tag-alpine-size](https://github.com/spursy/MultiStagesDocker/blob/master/check-tag-alpine-size.png?raw=true)

- extract go build target and docker build it into new images

```
chmod +x ./build.sh

./build.sh
```

![check-tag-latest-size](https://github.com/spursy/MultiStagesDocker/blob/master/check-tag-latest-size.png?raw=true)

### MultiStages Docker Build

![check-tag-multi-size](https://github.com/spursy/MultiStagesDocker/blob/master/check-tag-multi-size.png?raw=true)
