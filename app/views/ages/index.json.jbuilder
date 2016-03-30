json.array!(@ages) do |age|
  json.extract! age, :id, :name, :active
  json.url age_url(age, format: :json)
end
