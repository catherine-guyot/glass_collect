class CreateJackpots < ActiveRecord::Migration[7.0]
  def change
    create_table :jackpots do |t|
      t.float :value
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
