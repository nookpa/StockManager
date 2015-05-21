json.array!(@products) do |product|
  json.extract! product, :id, :name, :user_id, :member_id, :amount, :color, :cost_price, :sale_price
  json.url product_url(product, format: :json)
end
