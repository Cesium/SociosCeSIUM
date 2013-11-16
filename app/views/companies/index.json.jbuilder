json.array!(@companies) do |company|
  json.extract! company, :name, :nif, :description
  json.url company_url(company, format: :json)
end
