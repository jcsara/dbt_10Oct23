--test\no_nulls_in_dim_listings.sql
{{ no_nulls_in_columns(ref('dim_listings_cleansed')) }}