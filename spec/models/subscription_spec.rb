require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :status }
    it { should validate_presence_of :price }
    it { should validate_presence_of :frequency_delivered }
  end
  describe "relationships" do
    it { should have_many :tea_subscriptions }
    it { should have_many :customer_subscriptions }
    it { should have_many(:teas).through(:tea_subscriptions) }
    it { should have_many(:customers).through(:customer_subscriptions) }
  end
end
