json.array!(@crews) do |crew|
  json.extract! crew, :id, :name, :member
  json.url crew_url(crew, format: :json)
end
