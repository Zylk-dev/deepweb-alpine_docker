Dockerfile Explanation

dockerfile

# Use Alpine Linux as the base
FROM alpine:latest

This line specifies the base image for your Docker container. Alpine Linux is chosen here for its small size and efficiency.
dockerfile

# Update the package manager, install tools, and sudo
RUN apk update && apk add --no-cache \
       lynx \
       tor \
       torsocks \
       proxychains-ng \
       sudo
This command updates the package index and installs essential tools needed for browsing the deep web:
Lynx: A text-based web browser.
Tor: Software for enabling anonymous communication.
Torsocks: A wrapper that allows applications to use Tor.
Proxychains-ng: A tool that forces any TCP connection made by any application to follow through a proxy (in this case, Tor).
Sudo: Allows users to run commands with superuser privileges.

dockerfile

# Configure proxychains to use Tor (as root)
RUN echo "socks5 127.0.0.1 9050" >> /etc/proxychains.conf
This line modifies the Proxychains configuration file to route connections through Tor, specifying that the Tor service runs on localhost (127.0.0.1) on port 9050.
dockerfile

# Add a deep web-inspired non-root user and give it sudo privileges
RUN adduser -D deepuser && \
    echo "deepuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
A non-root user named deepuser is created to enhance security. The second part grants this user passwordless sudo privileges.

dockerfile

# Switch to the new user
USER deepuser
This line changes the context of the container to the newly created user, deepuser, for subsequent commands.

dockerfile

# Expose the Tor control port (optional)
EXPOSE 9050
This command makes the Tor control port available, although it is optional for internal usage.

dockerfile

# Start Tor, then open the Hidden Wiki in Lynx
CMD tor & sleep 10 && proxychains lynx https://thehiddenwiki.org/
This command starts the Tor service, waits for 10 seconds to ensure it has started properly, and then launches Lynx to navigate to The Hidden Wiki.
