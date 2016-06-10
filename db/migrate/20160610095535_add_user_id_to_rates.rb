class AddUserIdToRates < ActiveRecord::Migration[5.0]
  def change
    add_column :rates, :user_id, :integer
    add_foreign_key :rates, :users, on_delete: :cascade
  end
end
