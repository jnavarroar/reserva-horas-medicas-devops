# Imagen base del servidor web
FROM nginx:alpine

# Copiar los archivos de la página al servidor Nginx
COPY ./src/ /usr/share/nginx/html/

# Puerto utilizado dentro del contenedor
EXPOSE 80
