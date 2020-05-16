FROM alpine:3.11.6

RUN apk add --update --no-cache py-pip jq=1.6 \
  && pip install --no-cache-dir yq==2.10.1

ENTRYPOINT ["yq"]
