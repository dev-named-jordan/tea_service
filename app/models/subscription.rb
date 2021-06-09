class Subscription < ApplicationRecord
  validates_presence_of :name,
                        :status,
                        :price,
                        :frequency_delivered

  has_many :tea_subscriptions
  has_many :customer_subscriptions
  has_many :teas, through: :tea_subscriptions
  has_many :customers, through: :customer_subscriptions
end
