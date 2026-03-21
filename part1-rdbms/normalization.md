## Anomaly Analysis

### Insert Anomaly
In the current flat table, new products or new sales representatives cannot be added unless an order is created. 
For example, product information such as product_id, product_name, category, and unit_price only exists when an order is recorded. 
This creates an insert anomaly because the business cannot store product or sales representative data independently.

### Update Anomaly
Customer and sales representative information is repeated across multiple rows. 
For example, customer Neha Gupta (customer_id C006) appears in multiple records with the same email and city. 
If the customer's email or city changes, it must be updated in multiple rows, which may lead to inconsistent data if some rows are missed.

### Delete Anomaly
If an order record is deleted, important information about customers, products, or sales representatives may also be lost. 
For example, if a product appears in only one order and that order is deleted, all information about that product will be removed from the database.


## Normalization Justification

Keeping all data in one table may seem simpler, but it creates several problems such as data redundancy, update anomalies, insert anomalies, and delete anomalies. In the given dataset, customer information such as customer name, email, and city is repeated in multiple rows for each order. Similarly, product and sales representative information is also repeated multiple times. This leads to data redundancy and increases storage usage.

If a customer’s email or city needs to be updated, it must be updated in multiple rows, which can lead to inconsistent data if some rows are not updated. This is an example of an update anomaly. Similarly, new products or sales representatives cannot be added unless an order exists, which is an insert anomaly. Deleting an order may also delete important product or customer information, which is a delete anomaly.

Normalization organizes the data into separate tables such as Customers, Products, Orders, Sales Representatives, and Order Items. This reduces redundancy, improves data integrity, and makes the database more efficient and reliable. Therefore, normalization is not over-engineering but a necessary step for maintaining a clean and consistent database structure.
