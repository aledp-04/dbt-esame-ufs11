with 

source as (

    select * from {{ source('BigQuery', 'transazioni') }}

),

renamed as (

    select
        id,
        id_ordine,
        data_transazione,
        importo

    from source

)

select * from renamed