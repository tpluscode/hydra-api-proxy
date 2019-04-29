FROM nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY cors.conf /etc/nginx/conf.d/cors.conf

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
