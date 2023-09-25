FROM ubuntu
MAINTAINER zineeddinekb (zinoutarek19@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx git
EXPOSE 81
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /varr/www/html/
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
