class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.datetime :date
      t.references :vehicle, foreign_key: true
      t.references :driver, foreign_key: true
      t.string :destination
      t.integer :kilometers

      t.timestamps
    end
  end
end
