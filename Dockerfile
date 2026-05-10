FROM nginx:alpine
RUN mkdir -p /var/log/nginx /usr/share/nginx/html
COPY Nginx.conf /etc/nginx/nginx.conf
COPY Dashboard.html /usr/share/nginx/html/index.html
RUN chmod 644 /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
