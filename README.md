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


### Database Schema

![Screen Shot 2021-06-09 at 10 31 53 PM](https://user-images.githubusercontent.com/68141454/121465138-7fa66c80-c972-11eb-93b5-b7bc418d9e76.png)
