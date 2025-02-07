FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Create a custom index.html file
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

# Change the default command to run nginx on port 8080
CMD ["nginx", "-g", "daemon off;"]