json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :type_id, :appellation_id, :bottle_price, :glass_price, :color, :nose, :mouth, :logo
  json.url wine_url(wine, format: :json)
end
