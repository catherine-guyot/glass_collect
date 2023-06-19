class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :number_of_bottles
      t.integer :status
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :deposit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
