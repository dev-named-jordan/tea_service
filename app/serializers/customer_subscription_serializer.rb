class CustomerSubscriptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :subscription_id, :customer_id
  # set_id { 'null' }
end
