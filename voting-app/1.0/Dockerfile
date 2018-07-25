FROM node:10.6.0-alpine

ARG IMAGE_CREATE_DATE
ARG IMAGE_VERSION
ARG IMAGE_SOURCE_REVISION

# Metadata as defined in OCI image spec annotations - https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.title="Voting App - AKS Service Mesh sample" \
      org.opencontainers.image.description="Provides the voting app component for the AKS Service Mesh sample." \
      org.opencontainers.image.created=$IMAGE_CREATE_DATE \
      org.opencontainers.image.version=$IMAGE_VERSION \
      org.opencontainers.image.authors="Microsoft" \
      org.opencontainers.image.url="https://hub.docker.com/r/microsoft/sample-servicemesh-voting-app" \
      org.opencontainers.image.documentation="https://github.com/Azure-Samples/servicemesh-voting-app" \
      org.opencontainers.image.vendor="Microsoft" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/Azure-Samples/servicemesh-voting-app.git" \
      org.opencontainers.image.revision=$IMAGE_SOURCE_REVISION 

# curl for debugging
RUN apk --no-cache add curl 

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
