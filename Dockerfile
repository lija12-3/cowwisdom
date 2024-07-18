# Use a base image with Bash and netcat (nc) available
FROM alpine:latest

# Install cowsay and fortune-mod (required by wisecow.sh)
RUN apk --no-cache add cowsay fortune-mod

# Set environment variables
ENV SRVPORT=4499
ENV RSPFILE=response

# Copy wisecow.sh script into the container
COPY wisecow.sh /

# Make wisecow.sh executable
RUN chmod +x /wisecow.sh

# Expose the port on which the application will run
EXPOSE $SRVPORT

# Set the entrypoint to run the wisecow.sh script
CMD ["/wisecow.sh"]

