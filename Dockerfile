# Use a lightweight base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y fortune-mod cowsay

# Copy the application files
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the application port
EXPOSE 4499

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/wisecow.sh"]
