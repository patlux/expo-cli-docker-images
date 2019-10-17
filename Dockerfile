ARG NODE_VERSION="lts-alpine"
ARG EXPO_VERSION="latest"

FROM node:${NODE_VERSION}

RUN apk add --no-cache bash
RUN npm install --global --unsafe-perm expo-cli@${EXPO_VERSION}

COPY entrypoint.sh /

USER node
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
