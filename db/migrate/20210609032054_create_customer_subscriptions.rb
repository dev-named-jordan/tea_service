class CreateCustomerSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_subscriptions do |t|
      t.references :subscription, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
