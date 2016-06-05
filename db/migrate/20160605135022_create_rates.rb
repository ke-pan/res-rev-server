class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :score
      t.integer :restaurant_id
      t.text :comment
      t.timestamps
    end
    add_foreign_key :rates, :restaurants, dependent: :delete
  end
end
