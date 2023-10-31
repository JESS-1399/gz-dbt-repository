with

source as (

    select * from{{ source ('raw', 'ships')}}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logCost,
        ship_cost

    from source

)

select * from renamed