FROM nginx
LABEL name="vite-front"
LABEL version="1.0"
COPY  ./dist/ /usr/share/nginx/html/
COPY ./vite-front.conf /etc/nginx/conf.d/
EXPOSE 3000