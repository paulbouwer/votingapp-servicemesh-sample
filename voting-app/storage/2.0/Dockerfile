FROM mysql:5.7.22

ARG IMAGE_CREATE_DATE
ARG IMAGE_VERSION
ARG IMAGE_SOURCE_REVISION

# Metadata as defined in OCI image spec annotations - https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.title="Voting Storage - AKS Istio sample" \
      org.opencontainers.image.description="Provides the voting storage (MySQL) component for the AKS Istio sample." \
      org.opencontainers.image.created=$IMAGE_CREATE_DATE \
      org.opencontainers.image.version=$IMAGE_VERSION \
      org.opencontainers.image.authors="Microsoft" \
      org.opencontainers.image.url="https://mcr.microsoft.com/aks/samples/voting-app/storage" \
      org.opencontainers.image.documentation="https://github.com/Azure-Samples/aks-voting-app" \
      org.opencontainers.image.vendor="Microsoft" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/Azure-Samples/aks-voting-app.git" \
      org.opencontainers.image.revision=$IMAGE_SOURCE_REVISION 

ADD azurevote.sql /docker-entrypoint-initdb.d