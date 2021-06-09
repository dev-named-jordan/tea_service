class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :status
      t.float :price
      t.string :frequency_delivered

      t.timestamps
    end
  end
end
