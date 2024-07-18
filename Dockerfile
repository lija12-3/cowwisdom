# Use a base image with necessary tools and packages
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay

# Copy application files (adjust as per your project)
COPY . /app

# Set the working directory
WORKDIR /app

# Example command to run your application
CMD ["./wisecow.sh"]

