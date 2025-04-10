FROM alpine:latest

RUN apk add --no-cache build-base git

WORKDIR /root

RUN git clone https://github.com/rofl0r/microsocks.git && \
    cd microsocks && \
    make

WORKDIR /root/microsocks

CMD ["./microsocks", "-p", "1080"]