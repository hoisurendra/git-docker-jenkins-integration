# Dockerfile for creating basic nginx image

FROM nginx

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80