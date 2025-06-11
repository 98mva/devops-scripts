# Use official Ubuntu base image
FROM ubuntu:latest

# Install bash and other basic packages
RUN apt update && apt install -y bash

# Set working directory inside container
WORKDIR /app

# Copy files into the container
COPY . .

# Give execute permission to the script
RUN chmod +x env-reader.sh

# Set the default command
CMD ["bash", "env-reader.sh"]
