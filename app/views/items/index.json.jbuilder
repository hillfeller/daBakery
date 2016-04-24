json.array!(@items) do |item|
  json.extract! item, :id, :title, :price, :amount, :description
  json.url item_url(item, format: :json)
end
