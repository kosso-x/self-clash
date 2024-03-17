FROM ubuntu:latest

ENV http_proxy="http://localhost:7890/" \
    https_proxy="http://localhost:7890/" \
    ftp_proxy="http://localhost:7890/" \
    no_proxy="localhost,localhost" \
    HTTP_PROXY="http://localhost:7890/" \
    HTTPS_PROXY="http://localhost:7890/" \
    FTP_PROXY="http://localhost:7890/" \
    NO_PROXY="localhost,localhost"

WORKDIR /clash
COPY .config /

CMD ["/clash/clash", "-d", ".", "-secret", "sdata123."]

# docker run -d -it -p 7890:7890 -p 9090:9090 --name clash clash:v1
