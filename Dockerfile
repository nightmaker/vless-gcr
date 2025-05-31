FROM ghcr.io/teddysun/v2ray

# Set working directory
WORKDIR /etc/v2ray

# Copy the config
COPY config.json /etc/v2ray/config.json

# Expose Cloud Run’s required port
EXPOSE 8080

# Start V2Ray with the config
CMD ["/usr/bin/v2ray", "-config", "/etc/v2ray/config.json"]
