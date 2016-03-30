json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :type_id, :appellation_id, :color, :nose, :mouth, :logo
  json.bottle_price number_to_currency wine.bottle_price
  json.glass_price number_to_currency wine.glass_price
  json.type wine.type.name
  json.appellation wine.appellation.name
  json.grape_types wine.grape_types do |grape|
    json.name grape.name
  end
  json.url wine_url(wine, format: :json)
end
