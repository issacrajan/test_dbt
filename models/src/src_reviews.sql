with raw_reviews as (select * from {{ source("first_dbt", "reviews") }})

select listing_id, review_date, reviewer_name, comments as review_text
from raw_reviews
