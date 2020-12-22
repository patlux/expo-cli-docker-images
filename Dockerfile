ARG NODE_VERSION="lts-alpine"

FROM node:${NODE_VERSION}

ARG EXPO_VERSION="latest"

LABEL maintainer="email@patwoz.de"

RUN apk add --no-cache bash git
RUN echo "Installing expo-cli@${EXPO_VERSION} ..." && npm install --global --unsafe-perm expo-cli@${EXPO_VERSION} && npm cache clean --force

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
