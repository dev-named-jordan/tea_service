class SubscriptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :status, :price, :frequency_delivered
  # set_id { 'null' }
end
