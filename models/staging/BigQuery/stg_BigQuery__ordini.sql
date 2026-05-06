with 

source as (

    select * from {{ source('BigQuery', 'ordini') }}

),

renamed as (

    select
        id,
        id_utente,
        id_piano,
        id_coupon,
        id_metodo,
        data_ordine

    from source

)

select * from renamed