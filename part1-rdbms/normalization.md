## Anomaly Analysis

### Insert Anomaly
In the current flat table, new products or new sales representatives cannot be added unless an order is created. 
For example, product information such as product_id, product_name, category, and unit_price only exists when an order is recorded. 
This means a new product cannot be inserted without creating a fake order, which is an insert anomaly.

### Update Anomaly
Customer information is repeated in multiple rows. For example, customer Neha Gupta (customer_id C006) appears in many rows with the same email and city. 
If Neha Gupta changes her email, it must be updated in multiple rows. If one row is missed, the data becomes inconsistent. 
This is an update anomaly.

### Delete Anomaly
If an order is deleted, important product or customer information may also be lost. 
For example, if a product appears in only one order and that order is deleted, the product information will also be deleted. 
This is a delete anomaly.
