with 

abbonamenti as (

    select * from {{ ref('stg_BigQuery__abbonamenti') }}

),

transazioni as (

    select * from {{ ref('stg_BigQuery__transazioni') }}

),

rinnovi as (

    select * from {{ ref('stg_BigQuery__rinnovi') }}

),

ordini as (

    select * from {{ ref('stg_BigQuery__ordini') }}

),

joined as (

    select
        ordini.id,
        ordini.id_utente,
        ordini.id_piano,
        ordini.id_coupon,
        ordini.id_metodo,
        ordini.data_ordine,
        
        coalesce(transazioni.data_transazione, null) as data_transazione,
        coalesce(transazioni.importo, 0) as importo_transazione,
        coalesce(abbonamenti.iniziato_il, null) as inizio_abbonamento,
        coalesce(abbonamenti.finito_il, null) as fine_abbonamento,
        coalesce(rinnovi.attivo, null) as rinnovo_attivo

    from ordini

    left join transazioni on ordini.id = transazioni.id_ordine

    left join rinnovi on ordini.id = rinnovi.id_ordine

    left join abbonamenti on ordini.id = abbonamenti.id_ordine

)

select * from joined