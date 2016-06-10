class AddRatesCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :rates_count, :integer
  end
end
