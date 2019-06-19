class AddPassengerCapacityToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :passenger_capacity, :integer
  end
end
