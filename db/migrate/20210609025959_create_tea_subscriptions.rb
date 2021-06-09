class CreateTeaSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :tea_subscriptions do |t|
      t.subscription :references
      t.tea :references

      t.timestamps
    end
  end
end
