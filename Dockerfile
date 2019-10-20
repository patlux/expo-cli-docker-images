ARG NODE_VERSION="lts-alpine"
ARG EXPO_VERSION="latest"

FROM node:${NODE_VERSION}

LABEL maintainer="email@patwoz.de"

RUN apk add --no-cache bash \
  && npm install --global --unsafe-perm expo-cli@${EXPO_VERSION} \
  && npm cache clean --force

COPY entrypoint.sh /

USER node
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
