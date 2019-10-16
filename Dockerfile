ARG NODE_VERSION="lts-alpine"
ARG EXPO_VERSION="latest"

FROM node:${NODE_VERSION}
RUN npm install --global expo-cli@${EXPO_VERSION}

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
