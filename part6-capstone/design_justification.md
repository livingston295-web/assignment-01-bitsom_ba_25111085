## Storage Systems

For patient readmission risk prediction, I would use a relational database and a data warehouse together. The hospital’s transactional systems would first store structured patient records, admissions, diagnoses, medications, and treatment history in an OLTP relational database such as PostgreSQL or MySQL. Then this historical data would be moved into a data warehouse for feature engineering, trend analysis, and machine learning model training. This separation keeps operational workloads stable while supporting analytics.

For doctors asking questions in plain English about patient history, I would use a vector database along with the main patient record system. Clinical notes, discharge summaries, and medical reports can be converted into embeddings and stored in a vector database. This allows semantic search, so a doctor can ask “Has this patient had a cardiac event before?” and retrieve relevant past records even if the exact same wording is not used.

For monthly hospital management reports such as bed occupancy and department-wise costs, I would use the data warehouse. Reporting requires clean, integrated, and historical data, which is exactly what a warehouse is designed for. It enables OLAP-style queries and dashboard generation.

For real-time ICU vitals streaming, I would use a time-series or streaming data store, such as Kafka for ingestion and a time-series database for storage. ICU monitors generate high-frequency readings, so this data needs fast ingestion and efficient time-based querying.

## OLTP vs OLAP Boundary

The transactional system ends where day-to-day hospital operations happen: patient registration, appointments, prescriptions, treatment updates, admissions, and billing. This is the OLTP boundary because the system must handle frequent inserts and updates with strong consistency.

The analytical system begins when operational data is extracted, cleaned, and loaded into the warehouse or feature store. From that point onward, the focus shifts from transaction processing to trend analysis, reporting, and machine learning. The vector database also sits beyond the OLTP layer because it supports semantic retrieval rather than core transaction processing.

## Trade-offs

One significant trade-off in this design is increased architectural complexity. Using multiple storage systems such as a relational database, warehouse, vector database, and streaming store improves performance for different workloads, but it also increases integration effort, maintenance overhead, and governance challenges.

I would mitigate this by defining clear data ownership boundaries, using automated ETL and streaming pipelines, and enforcing strong metadata and access-control policies. A centralized monitoring and governance layer would also help ensure reliability, compliance, and easier troubleshooting across the full platform.
