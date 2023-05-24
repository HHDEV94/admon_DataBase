# ------------------------------ SQL 2019 -----------------------------------------
# Imagen de Docker Hub
FROM mcr.microsoft.com/mssql/server:2019-CU18-ubuntu-20.04 AS SQL2019

# Variables de entorno del contenedor
ENV MSSQL_SA_PASSWORD=C0ntrol1* ACCEPT_EULA=Y MSSQL_PID=Developer 

# Puerto SQL
EXPOSE 1433

# ------------------------------- MySQL -------------------------------------------
FROM mysql:8.0 AS MySql8

ENV MYSQL_ROOT_PASSWORD=C0ntrol1*

EXPOSE 8080

# ------------------------------- PostgreSQL --------------------------------------
FROM postgres:15 AS POSTGRESQL

ENV POSTGRES_PASSWORD=C0ntrol1*

EXPOSE 15000

# ------------------------------- Oracle ------------------------------------------
FROM oraclelinux:9 AS ORACLE9

ENV ORACLE_PWD=C0ntrol1*

EXPOSE 1521