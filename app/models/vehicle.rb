class Vehicle < ApplicationRecord
  belongs_to :vehicle_type
  has_many :trips
  validates :brand, :model, :plate, :year, :vehicle_type_id, :presence => true

  validate :according_to_type

  def according_to_type
    @type = VehicleType.find(vehicle_type_id);
    errors.add(:max_weight, 'cant be nil')  if (@type.name == "Carga" && max_weight.nil?)
    errors.add(:passenger_capacity, 'cant be nil')  if (@type.name == "Transporte" && passenger_capacity.nil?)
  end

  def describe
    self.brand + " " + self.model + " " + self.year.to_s + " (" + self.plate + ")"
  end
end
