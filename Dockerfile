FROM alpine

ENV PACKAGES="\
  py-pip \
  jq \
"

RUN apk add --update $PACKAGES \
  && pip install yq \
  && rm /var/cache/apk/*

CMD yq
