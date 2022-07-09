FROM nginx
LABEL name="vite-front1"
LABEL version="1.0"
COPY  ./dist/ /usr/share/nginx/html/
COPY ./vite-front1.conf /etc/nginx/conf.d/
EXPOSE 3001