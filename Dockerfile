FROM alpine:3.7
VOLUME /srv/app
WORKDIR /srv/app
RUN apk add --no-cache uwsgi
COPY entrypoint.sh /srv
CMD /srv/entrypoint.sh
