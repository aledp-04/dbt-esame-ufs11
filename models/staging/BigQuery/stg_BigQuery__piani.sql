with 

source as (

    select * from {{ source('BigQuery', 'piani') }}

),

renamed as (

    select
        id,
        nome,
        prezzo,
        durata

    from source

)

select * from renamed