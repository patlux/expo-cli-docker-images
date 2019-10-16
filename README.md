# Docker images for `expo-cli`

Docker images with preinstalled `expo-cli` based on the node images.

## Build

```bash
docker build -t patwoz/expo-cli .
```

It builds a docker image based on `node:lts-alpine` and with the `latest` currently available expo-cli.

If you need another tag version of docker's `node` image and/or expo-cli, you can pass the following build-arguments:

```bash
docker build . \
  --build-arg NODE_VERSION=12 \
  --build-arg EXPO_VERSION=3 \
  -t patwoz/expo-cli

# copy friendly
docker build . --build-arg NODE_VERSION=12  --build-arg EXPO_VERSION=3  -t patwoz/expo-cli
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
```
