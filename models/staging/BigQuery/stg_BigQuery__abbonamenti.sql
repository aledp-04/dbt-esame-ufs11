with 

source as (

    select * from {{ source('BigQuery', 'abbonamenti') }}

),

renamed as (

    select
        id,
        id_ordine,
        iniziato_il,
        finito_il

    from source

)

select * from renamed