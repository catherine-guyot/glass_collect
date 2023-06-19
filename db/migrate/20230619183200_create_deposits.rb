class CreateDeposits < ActiveRecord::Migration[7.0]
  def change
    create_table :deposits do |t|
      t.string :name
      t.string :address
      t.integer :total_capacity
      t.integer :remaining_capacity
      t.integer :status
      t.float :rating
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
