#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER regionalization WITH ENCRYPTED PASSWORD 'regionalization';
    CREATE DATABASE regionalization OWNER regionalization;
    GRANT ALL PRIVILEGES ON DATABASE regionalization TO regionalization;
EOSQL

psql --username "$POSTGRES_USER" --dbname regionalization -c "CREATE EXTENSION postgis;"
psql --username "$POSTGRES_USER" --dbname regionalization -c "CREATE EXTENSION postgis_topology;"


