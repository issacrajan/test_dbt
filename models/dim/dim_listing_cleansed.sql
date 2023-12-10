with src_listing as (select * from {{ ref("src_listing") }})

select
    listing_id,
    listing_name,
    room_type,
    case when minimum_nights = 0 then 1 else minimum_nights end as minimum_nights,
    host_id,
    cast(replace(replace(price_str, '$', ''), ',', '') as numeric(10, 2)) as price,
    created_at,
    updated_at
from src_listing
