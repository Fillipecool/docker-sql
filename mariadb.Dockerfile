# Use a imagem oficial do MariaDB 10.5
FROM mariadb:10.5

# Defina variáveis de ambiente necessárias
ENV MYSQL_ROOT_PASSWORD=example
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword
