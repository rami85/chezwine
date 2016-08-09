json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :type_id, :appellation_id, :color, :nose, :mouth, :logo, :age_id, :harvest, :wine_cell, :elaboration, :is_restaurant_wine, :is_special_wine
  json.bottle_500_price number_to_currency wine.bottle_500_price
  json.bottle_750_price number_to_currency wine.bottle_750_price
  json.glass_price number_to_currency wine.glass_price
  json.type wine.type.name
  json.appellation wine.appellation.name
  json.grape_types wine.wine_grapes do |wg|
  	json.id wg.grape_type_id
    json.name wg.grape_type.name
    json.percentage wg.percentage
  end
  json.age wine.age.name
  json.url wine_url(wine, format: :json)
  json.appellation_logo wine.appellation.logo
end