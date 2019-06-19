class Vehicle < ApplicationRecord
  belongs_to :vehicle_type
  has_many :trips
end
