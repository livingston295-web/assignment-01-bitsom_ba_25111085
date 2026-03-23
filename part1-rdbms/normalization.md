## Anomaly Analysis

The flat file stores customer, product, and sales representative data repeatedly in every order row. This creates multiple data anomalies.

### Insert Anomaly
A new product cannot be added unless an order exists for it.  
For example, product-related columns such as `product_id`, `product_name`, `category`, and `unit_price` only appear together inside an order row. Existing products like `P001 - Laptop` and `P008 - Webcam` appear only when tied to order records. If the company wants to add a new product that has not yet been ordered, there is no separate place to insert it without creating a fake order row.

### Update Anomaly
Customer and sales rep details are repeated across many rows, so updating one fact requires changing multiple records.  
For example, customer `C001` appears in many rows. If the email or city changes, every row must be updated.  
Similarly, sales representative details are also repeated in multiple rows, so one missed update will create inconsistent data.

### Delete Anomaly
Deleting an order row may also remove important master data.  
If the only row containing a particular product is deleted, the business may lose the product record itself. The same problem can happen for customers or sales representatives if their only row is removed.

## Normalization Justification

Keeping everything in one table may look simple at first, but in this dataset it creates redundancy, inconsistency, and maintenance problems. The same customer information is repeated again and again across multiple orders. The same issue exists for sales representatives and products. Repeating this data in every order row wastes storage and increases the chance of conflicting values.

Normalization is not over-engineering here; it solves real business problems. In a single-table design, if a customer changes their email address, every row for that customer must be updated. Missing even one row causes inconsistent data. Likewise, if a sales representative changes office location, the update must be repeated in many rows. This is exactly the kind of update anomaly normalization prevents.

A one-table design also causes insert and delete issues. A new product cannot be stored until someone places an order for it, and deleting the only row for a rarely ordered product can erase the product record entirely. That is risky and not suitable for a real business system.

By splitting the data into separate tables such as `customers`, `products`, `sales_reps`, and `orders`, each fact is stored once and linked through keys. This improves consistency, makes updates safer, and supports cleaner SQL queries. So in this case, normalization is a practical design improvement, not unnecessary complexity.
