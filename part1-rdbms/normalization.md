## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv table, product and sales representative information is stored only when an order exists. 
For example, columns like product_id, product_name, category, and unit_price appear only when an order is recorded. 
If the company wants to add a new product (for example a new product P010), it cannot be added unless a new order is created. 
This is an insert anomaly.

### Update Anomaly
Customer information is repeated in multiple rows. For example, customer Neha Gupta (customer_id C006) appears in many rows with the same email and city (Delhi). 
If her email needs to be updated, it must be updated in multiple rows. If one row is missed, the database will contain inconsistent data. 
This is an update anomaly.

### Delete Anomaly
If an order is deleted, important product information can also be lost. 
For example, if a product such as Desk Chair (product_id P003) appears in only one order and that order is deleted, then all information about that product will be lost. 
This is a delete anomaly.


## Normalization Justification

Keeping everything in one table may look simple, but in the orders_flat.csv dataset it causes serious data problems. Customer information, product information, and sales representative information are repeated in many rows. For example, the same customer appears multiple times for different orders, which creates redundancy. If a customer changes their email or city, it must be updated in multiple rows, otherwise update anomalies occur. Similarly, deleting an order may remove the only record of a product, causing a delete anomaly.

By normalizing the database into separate tables such as Customers, Products, Orders, Sales_Reps, and Order_Items, we reduce redundancy and improve data consistency. Each table stores data about only one entity, and relationships are maintained using foreign keys. This structure eliminates insert, update, and delete anomalies present in the flat file. Normalization also improves data integrity, reduces duplication, and makes the database more scalable and easier to maintain. Therefore, normalization is not over-engineering but an essential step in proper database design.
