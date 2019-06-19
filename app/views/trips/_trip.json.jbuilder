json.extract! trip, :id, :date, :vehicle_id, :driver_id, :destination, :kilometers, :created_at, :updated_at
json.url trip_url(trip, format: :json)
