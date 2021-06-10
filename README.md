# tea_service


### Endpoints

HTTP verb   | Path                                                          | Use
------------|---------------------------------------------------------------|-------------------------------------------
POST        | /api/v1/customers/:customer_id/subscriptions/:subscription_id | Subscribe a customer to a tea subscription, and create a subscription
PUT         | /api/v1/customers/:customer_id/subscriptions/:subscription_id?status=ordered | Update a customer's tea subscription status to ordered)
PUT         | /api/v1/customers/:customer_id/subscriptions/:subscription_id?status=cancelled | Update a customer's tea subscription status to cancelled)
GET         | /api/v1/customers/:customer_id/subscriptions                 | See customer's total subscriptions
GET         | /api/v1/customers                                            | View all customer's
GET         | /api/v1/customers/:customer_id                               | View one customer's info
GET         | /api/v1/teas                                                 | View all available teas
