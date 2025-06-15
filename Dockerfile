# Use a lightweight web server
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy app files into container
COPY . .

# Expose default nginx port
EXPOSE 80

# No CMD needed since nginx base image has default entrypoint
