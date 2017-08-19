FROM arm32v6/alpine:3.6
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

COPY ["cloudflare-update-record.sh","config.example","/"]


RUN apk add --no-cache curl perl && \
	mkdir /config && \
	chmod +x /cloudflare-update-record.sh

WORKDIR /config

VOLUME /config

CMD /cloudflare-update-record.sh
