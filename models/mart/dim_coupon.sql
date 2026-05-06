with

source as (

    select * from {{ ref('stg_BigQuery__coupon') }}

),

filtered as (

    select
        id,
        codice,
        sconto,

    from source

)

select * from filtered