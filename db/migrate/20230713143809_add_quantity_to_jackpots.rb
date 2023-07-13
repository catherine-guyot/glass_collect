class AddQuantityToJackpots < ActiveRecord::Migration[7.0]
  def change
    add_column :jackpots, :quantity, :integer
  end
end
