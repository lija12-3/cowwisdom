
FROM ubuntu:20.04

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y apt-transport-https

# Install fortune-mod and cowsay
RUN apt-get install -y fortune-mod cowsay

# Copy application files (adjust as per your project)
COPY . /app

# Set the working directory
WORKDIR /app

# Example command to run your application
CMD ["./wisecow.sh"]

