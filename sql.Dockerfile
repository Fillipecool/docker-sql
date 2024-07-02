# Use a imagem oficial do MySQL 5.7
FROM mysql:5.7

# Defina variáveis de ambiente necessárias
ENV MYSQL_ROOT_PASSWORD=example
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

