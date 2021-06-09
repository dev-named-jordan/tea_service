class CreateCustomerSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_subscriptions do |t|
      t.subscription :references
      t.customer :references

      t.timestamps
    end
  end
end
