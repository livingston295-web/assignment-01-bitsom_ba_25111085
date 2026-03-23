## Architecture Recommendation

I would recommend a Data Lakehouse for the food delivery startup. A pure data warehouse would be too restrictive because the startup is collecting many different types of data, including GPS logs, text reviews, payment transactions, and restaurant menu images. A pure data lake would provide flexible storage, but it may become difficult to manage, govern, and analyze efficiently at scale. A Data Lakehouse combines the strengths of both approaches.

The first reason is support for multiple data types. GPS logs are high-volume semi-structured data, customer reviews are unstructured text, payment transactions are structured records, and menu images are binary media files. A Lakehouse can store all of these in one architecture while still supporting analytics and machine learning workloads.

The second reason is better analytics and business intelligence. Food delivery startups need dashboards for delivery time, customer satisfaction, revenue trends, restaurant performance, and fraud monitoring. A Lakehouse supports SQL-based analytics on large datasets while also allowing raw data retention for future use cases.

The third reason is machine learning readiness. The company may later want to build recommendation systems, route optimization models, sentiment analysis on reviews, or computer vision models for menu images. A Lakehouse makes it easier to store raw and processed data together, which supports both BI reporting and AI development.

Finally, governance and scalability are important. Compared to a simple data lake, a Lakehouse gives better schema control, transactional reliability, and performance for analytical queries. Therefore, a Data Lakehouse is the most balanced and future-ready architecture for this startup.
