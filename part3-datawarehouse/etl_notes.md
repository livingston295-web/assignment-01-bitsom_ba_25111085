## ETL Decisions

### Decision 1 — Standardizing date formats
Problem: The raw dataset contained multiple date formats such as `29/08/2023`, `12-12-2023`, and `2023-02-05`. This inconsistency makes sorting, filtering, and joining on date fields difficult in a warehouse.
Resolution: All raw dates were converted into a single standard SQL date format: `YYYY-MM-DD`. This allowed me to build a clean `dim_date` table and ensure consistent reporting by month, quarter, and year.

### Decision 2 — Fixing inconsistent category casing
Problem: The `category` column had inconsistent values such as `Electronics`, `electronics`, `Grocery`, and `Groceries`. If loaded as-is, the warehouse would treat them as different categories and produce incorrect reports.
Resolution: I standardized category values before loading. I mapped `electronics` to `Electronics` and unified grocery-related values under `Groceries`. This ensured accurate aggregation in the product dimension and reporting queries.

### Decision 3 — Handling missing store city values
Problem: Some rows had NULL values in the `store_city` column, even though the `store_name` was present. This would lead to incomplete store dimension data.
Resolution: I filled missing `store_city` values using the known city implied by the store name, such as `Mumbai Central` → `Mumbai` and `Delhi South` → `Delhi`. This produced a cleaner `dim_store` table and prevented incomplete dimensional records.
