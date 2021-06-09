class Tea < ApplicationRecord
  validates_presence_of :name,
                        :description,
                        :image,
                        :keywords,
                        :origin,
                        :api_id,
                        :brew_time,
                        :temperature

  has_many :tea_subscriptions
  has_many :subscriptions, through: :tea_subscriptions
end
