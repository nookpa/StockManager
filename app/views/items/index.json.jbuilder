json.array!(@items) do |item|
  json.extract! item, :id, :code_name, :sale_date, :sale_price, :type, :status, :user_id, :member_id, :product_id, :remark
  json.url item_url(item, format: :json)
end
