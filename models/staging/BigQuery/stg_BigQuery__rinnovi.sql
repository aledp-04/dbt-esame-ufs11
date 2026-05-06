with 

source as (

    select * from {{ source('BigQuery', 'rinnovi') }}

),

renamed as (

    select
        id,
        id_ordine,
        attivo

    from source

)

select * from renamed