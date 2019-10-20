# Docker images for `expo-cli`

![](https://github.com/patlux/expo-cli-docker-images/workflows/Docker%20Image%20CI/badge.svg)

Docker images with preinstalled `expo-cli` based on the node images.

## Available docker images

| image:TAG           | node version | expo version | size    |
| ------------------- | ------------ | ------------ | ------- |
| `patwoz/expo-cli:3` | `lts-alpine` | `latest`     | ~100 mb |

You can find the docker images in the [official docker registry](https://hub.docker.com/r/patwoz/expo-cli).

## Examples

You can find some usage examples in the `examples/` folder.

## Build

```bash
docker build -t patwoz/expo-cli .
```

It builds a docker image based on `node:lts-alpine` and with the `latest` currently available [expo-cli](https://github.com/expo/expo-cli).

If you need another [tag version of docker's](https://hub.docker.com/_/node) `node` image and/or expo-cli, you can pass the following build-arguments:

```bash
docker build . \
  --build-arg NODE_VERSION=12 \
  --build-arg EXPO_VERSION=3 \
  -t patwoz/expo-cli

# copy friendly
docker build . --build-arg NODE_VERSION=12 --build-arg EXPO_VERSION=3 -t patwoz/expo-cli
```

## Run

You can run all commands which the [expo-cli](https://github.com/expo/expo-cli) supports.

```bash
# running "expo --help"
docker run -t patwoz/expo-cli --help
```

All arguments starting with a hyphen(`-`) are passed directly to the expo command line.

#### Login Example

```bash
docker run \
  -e "EXPO_CLI_PASSWORD=password" \
  -t patwoz/expo-cli \
  expo login --non-interactive --username="patwoz"

Success. You are now logged in as patwoz.

# copy friendly
docker run -e "EXPO_CLI_PASSWORD=password" -t patwoz/expo-cli expo login --non-interactive --username="patwoz"
```

## Publish

```bash
docker publish -t patwoz/expo-cli
```
