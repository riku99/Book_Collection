FROM nginx:1.19.2
COPY ./nginx.conf /etc/nginx/
COPY ./book_collection/build /build/
CMD ["nginx", "-g", "daemon off;"]



