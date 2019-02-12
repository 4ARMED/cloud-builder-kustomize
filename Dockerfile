FROM alpine:3.9
LABEL maintainer="Marc Wickenden <marc@4armed.com>"

ENV VERSION 2.0.1

RUN apk --update add curl && \
    curl -s -L -o /kustomize \
    https://github.com/kubernetes-sigs/kustomize/releases/download/v${VERSION}/kustomize_${VERSION}_linux_amd64 && \
    chmod +x /kustomize

ENTRYPOINT [ "/kustomize" ]
