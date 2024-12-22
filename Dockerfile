# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Install vim
RUN apt update && apt install -y vim


# Copy the local index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Ensure permissions are correct
RUN chmod 644 /usr/share/nginx/html/index.html

# Expose the port that Nginx will run on
EXPOSE 80
