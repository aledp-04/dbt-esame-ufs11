with 

source as (

    select * from {{ source('BigQuery', 'coupon') }}

),

renamed as (

    select
        id,
        codice,
        sconto,

    from source

)

select * from renamed