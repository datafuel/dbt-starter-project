materialization_database

{{ config(materialization_database='datalake-bucket', materialization_schema='ods', dist='user_id') }}
SELECT * FROM {{ source('stg', 'sirene_stg') }}