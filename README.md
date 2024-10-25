# deepweb-alpine_docker

A Docker container for accessing The Hidden Wiki using Lynx with Tor for anonymity.

# Deep Web Alpine 🌐

Welcome to **Deep Web Alpine**! This Docker container allows you to access The Hidden Wiki through the Lynx browser, using Tor for anonymity. Perfect for those who want to explore the deep web safely!

## 🚀 Getting Started

These instructions will help you set up the project on your local machine for development and testing purposes.

### 📋 Prerequisites

Make sure you have the following installed:

- **Docker**


### 🛠️ Building the Container

To build the Docker container, run:

(```bash
sudo docker build -t deep_web_alpine .)

To run the container, run;

(sudo docker run -it --name deep_web_container deep_web_alpine)

📖 Usage
Once the container is running, it will automatically start the Tor service and open the Lynx browser pointing to The Hidden Wiki:


