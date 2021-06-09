class CustomerSubscription < ApplicationRecord
  belongs_to :subscription
  belongs_to :customer
end
