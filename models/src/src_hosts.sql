with raw_hosts as (select * from {{ source("first_dbt", "hosts") }})

select host_id, host_name, is_superhost, created_at, updated_at
from raw_hosts
