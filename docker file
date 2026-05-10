FROM nginx:alpine

# Install cron for logging
RUN apk add --no-cache curl cron

# Copy WAF config
COPY nginx.conf /etc/nginx/nginx.conf
COPY dashboard.html /usr/share/nginx/html/

# Create logs dir
RUN mkdir -p /var/log/nginx /var/www/waf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
