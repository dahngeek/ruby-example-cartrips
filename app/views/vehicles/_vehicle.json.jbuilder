json.extract! vehicle, :id, :brand, :model, :plate, :year, :vehicle_type_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
