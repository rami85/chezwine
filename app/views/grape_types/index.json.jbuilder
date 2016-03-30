json.array!(@grape_types) do |grape_type|
  json.extract! grape_type, :id, :name, :active
  json.url grape_type_url(grape_type, format: :json)
end
