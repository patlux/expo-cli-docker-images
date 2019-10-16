# Docker images for `expo-cli`

Docker images with preinstalled `expo-cli` based on the node images.

## Build

```bash
docker build -t patwoz/expo-cli .
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
