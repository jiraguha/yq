FROM alpine:3.7

ENV PACKAGES="\
  py-pip \
  jq \
"

RUN apk add --update --no-cache $PACKAGES \
  && pip install yq \
  && rm /var/cache/apk/*

ENTRYPOINT ["yq"]
CMD []
