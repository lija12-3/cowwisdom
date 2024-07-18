# Start from a base Ubuntu image
FROM ubuntu:latest

# Install cowsay and fortune-mod (required by wisecow.sh)
RUN apt-get update \
    && apt-get install -y cowsay fortune-mod \
    && rm -rf /var/lib/apt/lists/*

# Copy the wisecow.sh script and Kubernetes manifests
COPY wisecow.sh /
COPY wisecowDeployment.yaml /
COPY wisecowService.yaml /
COPY wisecowIngress.yaml /

# Set environment variables if needed
# ENV ENV_VAR_NAME=value

# Set the entrypoint for the container
CMD ["/bin/bash", "/wisecow.sh"]
