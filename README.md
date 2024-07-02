# docker-sql

## Projeto

Este repositório contém exemplos de configuração para bancos de dados SQL e phpMyAdmin usando Docker. Inclui arquivos Dockerfile para SQL e phpMyAdmin, além de um docker-compose.yml para iniciar os serviços de forma rápida e fácil.

## Estrutura do Projeto
projeto/

│

├── docker-compose.yml # Arquivo de definição do Docker Compose

├── sql.Dockerfile # Exemplo de Dockerfile para banco de dados SQL

├── phpmyadmin.Dockerfile # Exemplo de Dockerfile para Redis

├── README.md # Documentação principal do projeto

└── outros-arquivos/ # Outros arquivos ou scripts relevantes


## Exemplos de Uso

### Iniciando um Serviço SQL

Para iniciar o serviço SQL, execute o seguinte comando:

```bash
docker-compose up -d
