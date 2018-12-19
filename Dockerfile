FROM alpine:latest

ENV IPERF_VER 2.0.10-r1

RUN apk add --update --no-cache iperf=${IPERF_VER} && adduser -S iperf 

USER iperf

ENTRYPOINT ["iperf"]

CMD ["--help"]
