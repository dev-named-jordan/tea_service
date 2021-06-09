require 'rails_helper'

RSpec.describe 'Customer Subscriptions index request', type: :request do
  before :each do
    Tea.delete_all
    Subscription.delete_all
    Customer.delete_all
    TeaSubscription.delete_all
    CustomerSubscription.delete_all

    @tea_1 = Tea.create({name: "Peach-Mint", description: "It's minty, it's peachy, too!", image: "image source needed", keywords: "peach, mint, fun", origin: "Colorado, USA", api_id: "123456", brew_time: 2, temperature: 80})
    @tea_2 = Tea.create({name: "Ceylon", description: "The standard of taste durign the height of English colonialism!", image: "image source needed", keywords: "tannic, bold, memorable", origin: "Sri Lanka", api_id: "123457", brew_time: 3, temperature: 90})

    @customer_1 = Customer.create({first_name: "Jordan", last_name: "Beck", email: "email_1@email.com", street_address: "123 Fun Street Denver, CO 54321"})
    @customer_2 = Customer.create({first_name: "Matthew", last_name: "Shaw", email: "email_2@email.com", street_address: "124 Fun Street Denver, CO 54321"})
    @customer_3 = Customer.create({first_name: "Tiffani", last_name: "Allen", email: "email_3@email.com", street_address: "125 Fun Street Denver, CO 54321"})

    @subscription_1 = Subscription.create({name: "Jordan's Tea", status: "ordered", price: 8.50, frequency_delivered: "monthly"})
    @subscription_2 = Subscription.create({name: "Jordan's other Tea", status: "cancelled", price: 9.50, frequency_delivered: "weekly"})
    @subscription_3 = Subscription.create({name: "Matt's Tea", status: "ordered", price: 5.50, frequency_delivered: "weekly"})
    @subscription_4 = Subscription.create({name: "Tiffani's Tea", status: "ordered", price: 10.50, frequency_delivered: "monthly"})

    @tea_subscription_1 = TeaSubscription.create!(subscription_id: @subscription_1.id, tea_id: @tea_1.id)
    @tea_subscription_2 = TeaSubscription.create!(subscription_id: @subscription_2.id, tea_id: @tea_2.id)
    @tea_subscription_3 = TeaSubscription.create!(subscription_id: @subscription_3.id, tea_id: @tea_2.id)
    @tea_subscription_4 = TeaSubscription.create!(subscription_id: @subscription_4.id, tea_id: @tea_1.id)

    @customer_subscription_1 = CustomerSubscription.create!(subscription_id: @subscription_1.id, customer_id: @customer_1.id)
    @customer_subscription_2 = CustomerSubscription.create!(subscription_id: @subscription_2.id, customer_id: @customer_1.id)
    @customer_subscription_3 = CustomerSubscription.create!(subscription_id: @subscription_3.id, customer_id: @customer_2.id)
    @customer_subscription_4 = CustomerSubscription.create!(subscription_id: @subscription_4.id, customer_id: @customer_3.id)
  end
    it 'It can list all of a customer subscriptions', :vcr do

    get "/api/v1/customers/#{@customer_1.id}/subscriptions"

    subscriptions = JSON.parse(response.body, symbolize_names:true)
# require "pry"; binding.pry
    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(subscriptions.first.keys).to match_array [:id, :name, :status, :price, :frequency_delivered, :created_at, :updated_at]
  end
end
