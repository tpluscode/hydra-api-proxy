FROM nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY cors.conf /etc/nginx/conf.d/cors.conf

ENV PORT=6789
EXPOSE $PORT

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
