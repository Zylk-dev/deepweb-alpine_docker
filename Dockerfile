# Use Alpine Linux as the base
FROM alpine:latest

# Update the package manager, install tools, and sudo
RUN apk update && apk add --no-cache \
       lynx \
       tor \
       torsocks \
       proxychains-ng \
       sudo

# Configure proxychains to use Tor (as root)
RUN echo "socks5 127.0.0.1 9050" >> /etc/proxychains.conf

# Add a deep web-inspired non-root user and give it sudo privileges
RUN adduser -D deepuser && \
    echo "deepuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Switch to the new user
USER deepuser

# Expose the Tor control port (optional)
EXPOSE 9050

# Start Tor, then open the Hidden Wiki in Lynx
CMD tor & sleep 10 && proxychains lynx https://thehiddenwiki.org/
