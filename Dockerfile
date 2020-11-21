FROM alpine:edge
MAINTAINER jzbl

RUN apk update && apk add curl parallel

WORKDIR /mnt

COPY urllist .

COPY jobrunner.sh .

ENTRYPOINT ["sh","./jobrunner.sh"]
