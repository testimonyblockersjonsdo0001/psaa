FROM alpine:latest

# Install dependencies
RUN apk add --no-cache \
    bash \
    curl \
    wget \
    unzip

# Download and install v2ray
RUN wget https://github.com/v2fly/v2ray-core/releases/download/v4.45.2/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && \
    rm v2ray-linux-64.zip && \
    chmod +x v2ray

# Copy config file
COPY config.json .

# Expose port
EXPOSE 8080

# Start v2ray
CMD ["./v2ray", "run", "-config", "config.json"]