json.array!(@products) do |product|
  json.extract! product, :id, :company, :website, :ups, :name, :price, :description
  json.url product_url(product, format: :json)
end
