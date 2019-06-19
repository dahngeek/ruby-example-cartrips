class Trip < ApplicationRecord
  belongs_to :vehicle
  belongs_to :driver

  validates :date, :vehicle_id, :driver_id, :destination, :kilometers, :presence => true
end
