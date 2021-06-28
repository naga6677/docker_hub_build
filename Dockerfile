FROM ubuntu:20.04
MAINTAINER "Naga Ede<venat26naga@gmail.com>"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y nginx iproute2
COPY index.html /vat/www/html
COPY index.html /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx","-g"]
CMD ["daemon off;"]
