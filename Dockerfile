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
# COPY /dok_pros/clash-app/.config ~/.config

CMD ["./clash"]
