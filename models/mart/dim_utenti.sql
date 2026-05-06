with

source as (

    select * from {{ ref('stg_BigQuery__utenti') }}

),

filtered as (

    select
        id,
        nome,
        cognome,
        data_nascita,
        data_registrazione

    from source

)

select * from filtered