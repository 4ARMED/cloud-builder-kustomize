FROM gcr.io/cloud-builders/gcloud
LABEL maintainer="Marc Wickenden <marc@4armed.com>"

ENV VERSION 2.0.1

RUN curl -s -L -o /kustomize \
   https://github.com/kubernetes-sigs/kustomize/releases/download/v${VERSION}/kustomize_${VERSION}_linux_amd64 && \
   chmod +x /kustomize

ENTRYPOINT [ "/kustomize" ]