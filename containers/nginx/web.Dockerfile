FROM nginx:1.25.3-alpine

RUN sed -i 's/Server: nginx/Server: piccl/' `which nginx` && \
    sed -i 's/center>nginx/center>piccl/' `which nginx`

EXPOSE 8080
EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
