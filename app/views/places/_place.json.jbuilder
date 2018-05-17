json.extract! place, :id, :name, :placetype, :opentime, :closetime, :img, :description, :address, :price, :created_at, :updated_at
json.url place_url(place, format: :json)
