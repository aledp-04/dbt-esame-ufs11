with

source as (

    select * from {{ ref('stg_BigQuery__piani') }}

),

filtered as (

    select
        id,
        nome,
        prezzo,
        durata,

    from source

)

select * from filtered