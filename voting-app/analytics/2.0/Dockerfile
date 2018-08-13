FROM node:10.6.0-alpine

ARG IMAGE_CREATE_DATE
ARG IMAGE_VERSION
ARG IMAGE_SOURCE_REVISION

# Metadata as defined in OCI image spec annotations - https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.title="Voting Analytics Service - AKS Istio sample" \
      org.opencontainers.image.description="Provides the voting analytics service component for the AKS Istio sample." \
      org.opencontainers.image.created=$IMAGE_CREATE_DATE \
      org.opencontainers.image.version=$IMAGE_VERSION \
      org.opencontainers.image.authors="Microsoft" \
      org.opencontainers.image.url="https://mcr.microsoft.com/aks/samples/istio/voting-analytics" \
      org.opencontainers.image.documentation="https://github.com/Azure-Samples/istio-voting-app" \
      org.opencontainers.image.vendor="Microsoft" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/Azure-Samples/istio-voting-app.git" \
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
