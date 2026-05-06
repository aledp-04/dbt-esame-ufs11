with 

source as (

    select * from {{ source('BigQuery', 'metodi') }}

),

renamed as (

    select
        id,
        nome

    from source

)

select * from renamed