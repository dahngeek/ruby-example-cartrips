class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.string :plate
      t.integer :year
      t.references :vehicle_type, foreign_key: true

      t.timestamps
    end
  end
end
