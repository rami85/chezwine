json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :type_id, :appellation_id, :color, :nose, :mouth, :logo, :age_id
  json.bottle_price number_to_currency wine.bottle_price
  json.glass_price number_to_currency wine.glass_price
  json.type wine.type.name
  json.appellation wine.appellation.name
  json.grape_types wine.grape_types do |grape|
  	json.id grape.id
    json.name grape.name
  end
  json.age wine.age.name
  json.url wine_url(wine, format: :json)
  json.appellation_logo wine.appellation.logo
end
