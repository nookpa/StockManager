json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :telephone, :email, :address, :facebook
  json.url member_url(member, format: :json)
end
