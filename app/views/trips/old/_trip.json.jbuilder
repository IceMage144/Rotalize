json.extract! trip, :id, :name, :beginning, :duration, :created_at, :updated_at
json.url trip_url(trip, format: :json)
