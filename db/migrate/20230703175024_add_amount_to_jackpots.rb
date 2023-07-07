class AddAmountToJackpots < ActiveRecord::Migration[7.0]
  def change
    add_column :jackpots, :amount, :decimal
  end
end
