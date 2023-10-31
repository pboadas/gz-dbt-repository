with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS product_id,
        revenue,
        quantity,
        concat(orders_id,"_",pdt_id) as primary_key

    from source

)

select * from renamed
