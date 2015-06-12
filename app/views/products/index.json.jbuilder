json.array!(@products) do |product|
  json.extract! product, :id, :name, :type, :color, :cost_price, :remark
  json.url product_url(product, format: :json)
end
