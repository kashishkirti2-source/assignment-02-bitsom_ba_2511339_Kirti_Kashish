## Design Justification

### Storage Systems

In this architecture, different storage systems are used for different purposes. An OLTP database such as PostgreSQL is used to store transactional patient data from EHR systems because it supports fast inserts and updates. A Data Warehouse such as BigQuery or Snowflake is used for analytical queries and monthly reports because it is optimized for large-scale analytics. A Data Lake such as Amazon S3 or Google Cloud Storage is used to store raw data like lab reports and real-time ICU data because it can store structured and unstructured data at low cost. A Vector Database such as Pinecone or FAISS is used to store doctor notes as embeddings so that doctors can search patient history using natural language. The ML model uses data from the Data Lake to predict patient readmission risk.

### OLTP vs OLAP Boundary

The OLTP system is used for transactional data such as patient records and hospital operations. This data is then moved to the Data Warehouse for OLAP workloads like reporting and analytics. The boundary between OLTP and OLAP is where data is moved from PostgreSQL (OLTP) to the Data Warehouse (OLAP) through ETL/ELT pipelines. OLTP handles real-time transactions, while OLAP handles historical analysis and reporting.

### Trade-offs

One major trade-off in this architecture is increased system complexity because multiple storage systems are used (OLTP, Data Lake, Data Warehouse, Vector DB). This can increase maintenance and data integration effort. To mitigate this, we can use automated data pipelines and orchestration tools like Apache Airflow to manage data movement and ensure data consistency across systems.

