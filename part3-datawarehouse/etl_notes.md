## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The raw data contained inconsistent date formats such as DD-MM-YYYY.
Resolution: All dates were converted into a standard YYYY-MM-DD format and a separate date dimension table was created for month and year analysis.

### Decision 2 — Handling NULL Store City
Problem: Some rows had missing store_city values.
Resolution: Missing city values were filled based on store_name (e.g., Mumbai Central → Mumbai) to maintain consistency in the store dimension table.

### Decision 3 — Category Name Standardization
Problem: Category names had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".
Resolution: All category values were converted into proper case (Electronics, Clothing, Grocery) to ensure consistent grouping and reporting.
