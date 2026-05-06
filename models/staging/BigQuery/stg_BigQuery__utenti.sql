with 

source as (

    select * from {{ source('BigQuery', 'utenti') }}

),

renamed as (

    select
        id,
        nome,
        cognome,
        data_nascita,
        data_registrazione

    from source

)

select * from renamed