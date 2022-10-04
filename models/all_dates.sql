{{
    config(
        materialized='table'
    )
}}
--references the package dbt_utils macro to collect all dates since 2020
{{ dbt_utils.date_spine(
    "day",
    "to_date('01/01/2020', 'mm/dd/yyyy')",
    "dateadd(week, 1, current_date)"
) }}