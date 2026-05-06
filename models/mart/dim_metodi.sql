with

source as (

    select * from {{ ref('stg_BigQuery__metodi') }}

),

filtered as (

    select
        id,
        nome,

    from source

)

select * from filtered