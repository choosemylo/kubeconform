FROM golang:bullseye

ARG kubeconform_version="v0.4.13"

RUN go install github.com/yannh/kubeconform/cmd/kubeconform@${kubeconform_version}


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]