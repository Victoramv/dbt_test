{% snapshot mock_orders %}

{% set snapshot_schema = 'DBT_VMARTINEZALBARRACIN_snapshot' %}

{{
    config(
        target_database='pc_dbt_db',
        target_schema= snapshot_schema,
        unique_key= 'order_id',

        strategy='timestamp',
        updated_at='updated_at'
        )
    }}

select * from pc_dbt_db.DBT_VMARTINEZALBARRACIN.mock_orders

{% endsnapshot %}