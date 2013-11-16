json.array!(@transactions) do |transaction|
  json.extract! transaction, :date, :value, :member_id, :description, :category_id, :company_id
  json.url transaction_url(transaction, format: :json)
end
