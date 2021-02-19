
{{ config(materialization_database='datalake-bucket', materialization_schema='ods', dist='user_id') }}

CREATE TABLE [HASH PARTITION BY] [LOCALSORT BY] AS (
    SELECT * FROM {{ source('stg', 'sirene_stg') }}
)
