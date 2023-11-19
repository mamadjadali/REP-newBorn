FROM ubuntu
RUN apt update -y
LABEL maintainer="Mamali"
RUN apt install nginx -y
COPY . /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]