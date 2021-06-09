require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :image }
    it { should validate_presence_of :keywords }
    it { should validate_presence_of :origin }
    it { should validate_presence_of :api_id }
    it { should validate_presence_of :brew_time }
    it { should validate_presence_of :temperature }
  end
  describe "relationships" do
    it { should have_many :tea_subscriptions }
    it { should have_many(:subscriptions).through(:tea_subscriptions) }
  end
end
