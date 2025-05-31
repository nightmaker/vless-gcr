FROM ghcr.io/xtls/xray-core:latest

COPY config.json /etc/xray/config.json

CMD ["xray", "run", "-c", "/etc/xray/config.json"]
