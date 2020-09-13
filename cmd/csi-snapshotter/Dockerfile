FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Snapshotter Sidecar"

ARG TARGETPLATFORM

COPY ./bin/csi-snapshotter/${TARGETPLATFORM} csi-snapshotter
ENTRYPOINT ["/csi-snapshotter"]
