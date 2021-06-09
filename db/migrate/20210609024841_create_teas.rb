class CreateTeas < ActiveRecord::Migration[6.1]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :keywords
      t.string :origin
      t.string :api_id
      t.integer :brew_time
      t.integer :temperature

      t.timestamps
    end
  end
end
