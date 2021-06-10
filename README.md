# tea_service

### Created by:

- [Jordan Beck](https://github.com/jordanfbeck0528) | [LinkedIn](https://www.linkedin.com/in/jordan-f-beck/)

### About

Take Home challenge for Turing Mod 4. We were given 3 endpoints to expose for an Tea Subscription Service API. Makes use of Schema Migrations, Routes, Serializers, MVC, TDD with Request and Model testing, with Model validations, Rspec, Capybara, Error Handling, Active Record, and Fast JSON.  

- https://github.com/turingschool-examples/mod4-tech-challenges/blob/main/take-homes/be-take-home.md

#### Built With

* [Ruby on Rails](https://rubyonrails.org)


#### Tested With

This project was tested with:
* [RSpec](https://rspec.info/)
* [Capybara](https://github.com/teamcapybara/capybara)
* [Shoulda-Matchers](https://github.com/thoughtbot/shoulda-matchers)

#### Prerequisites

* __Ruby__

  - The project is built with rubyonrails using __ruby version 2.6.6, you must install ruby on your local machine first. Please visit the [ruby](https://www.ruby-lang.org/en/documentation/installation/) home page to get set up. _Please ensure you install the version of ruby noted above._

* __Rails__

  - gem install rails --version 6.1.3.2

* __Postgres database__

  - Visit the [postgresapp](https://postgresapp.com/downloads.html) homepage and follow their instructions to download the latest version of Postgres app.

#### Installing

1. Clone the repo
  ```
  $ git clone https://github.com/jordanfbeck0528/tea_service
  ```

2. Bundle Install
  ```
  $ bundle install
  ```

3. Create, and migrate, and seed rails database
  ```
  $ rails db:{create,migrate,seed}
  ```


### Endpoints

HTTP verb   | Path                                                                           | Use
------------|--------------------------------------------------------------------------------|-------------------------------------------
POST        | /api/v1/customers/:customer_id/subscriptions/:subscription_id                  | Create a subscription for Customer
PUT         | /api/v1/customers/:customer_id/subscriptions/:subscription_id?status=ordered   | Update a customer's tea subscription status to ordered)
PUT         | /api/v1/customers/:customer_id/subscriptions/:subscription_id?status=cancelled | Update a customer's tea subscription status to cancelled)
GET         | /api/v1/customers/:customer_id/subscriptions                                   | See customer's total subscriptions
GET         | /api/v1/customers                                                              | View all customer's
GET         | /api/v1/customers/:customer_id                                                 | View one customer's info
GET         | /api/v1/teas                                                                   | View all available teas
GET         | /api/v1/subscriptions                                                          | View all subscriptions


#### API Contract

All Subscriptions by Customer

![Screen Shot 2021-06-10 at 10 16 00 AM](https://user-images.githubusercontent.com/68141454/121560578-e492ae80-c9d4-11eb-8ecf-99f1978ed8dd.png)

All Customers

![Screen Shot 2021-06-10 at 10 25 28 AM](https://user-images.githubusercontent.com/68141454/121561972-3ab42180-c9d6-11eb-9308-d5ab66ce6d0a.png)

Specific Customer

![Screen Shot 2021-06-10 at 10 26 19 AM](https://user-images.githubusercontent.com/68141454/121562040-4dc6f180-c9d6-11eb-97a9-b70c40f5fe3d.png)

All Available Teas

<img width="806" alt="Screen Shot 2021-06-10 at 12 24 27 PM" src="https://user-images.githubusercontent.com/68141454/121577500-cdf55300-c9e6-11eb-8ac8-4bcdf753ac0b.png">

All subscriptions

![Screen Shot 2021-06-10 at 1 33 05 PM](https://user-images.githubusercontent.com/68141454/121586026-65ab6f00-c9f0-11eb-82b7-c0035a3b690c.png)

##### Running Tests
- To run the full test suite run the below in your terminal:
```
$ bundle exec rspec
```
- To run an individual test file run the below in tour terminal:
```
$ bundle exec rspec <file path>
```


### Database Schema

![Screen Shot 2021-06-09 at 10 31 53 PM](https://user-images.githubusercontent.com/68141454/121465138-7fa66c80-c972-11eb-93b5-b7bc418d9e76.png)
