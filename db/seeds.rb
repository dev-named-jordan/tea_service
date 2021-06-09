# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tea.delete_all
Subscription.delete_all
Customer.delete_all
SubscriptionTea.delete_all
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


# 10.times do
#   FactoryBot.create :tea
#   FactoryBot.create :subscription
#   FactoryBot.create :customer
# end
#
# first_two = Tea.all[0..1]
# last_two = Tea.all[-2..-1]
# first_subscription = Subscription.first
# last_subscription = Subscription.last
# TeaSubscription.new
#
# first_two.each do |tea|
#   TeaSubscription.create!(tea_id: tea.id, subscription_id:first_subscription.id)
# end
#
# last_two.each do |tea|
#   TeaSubscription.create!(tea_id: tea.id, subscription_id:last_subscription.id)
# end
