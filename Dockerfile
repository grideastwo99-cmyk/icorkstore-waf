FROM nginx:alpine

# Create directories
RUN mkdir -p /var/www/waf /var/log/nginx

# Copy WAF files
COPY Nginx.conf /etc/nginx/nginx.conf
COPY Dashboard.html /usr/share/nginx/html/index.html

# Fix permissions
RUN chmod -R 755 /usr/share/nginx/html /var/log/nginx \
    && chown -R nginx:nginx /var/log/nginx /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
