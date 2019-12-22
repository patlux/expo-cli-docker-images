ARG NODE_VERSION="lts-alpine"
ARG EXPO_VERSION="latest"

FROM node:${NODE_VERSION}

LABEL maintainer="email@patwoz.de"

RUN apk add --no-cache bash git \
  && npm install --global --unsafe-perm expo-cli@${EXPO_VERSION} \
  && npm cache clean --force \
  && echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf

COPY entrypoint.sh /

USER node
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
