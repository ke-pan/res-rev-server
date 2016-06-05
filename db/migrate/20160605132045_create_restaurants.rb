class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :category
      t.time :open_at
      t.time :close_at
      t.float :score
      t.attachment :picture
      t.timestamps
    end
  end
end
