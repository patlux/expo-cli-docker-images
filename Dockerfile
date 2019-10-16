FROM node:lts-alpine
RUN npm install --global expo-cli

COPY entrypoint.sh /

USER node
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
