# Use Nginx as the base image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files into nginx’s default folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
