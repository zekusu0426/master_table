json.array!(@users) do |user|
  json.extract! user, :id, :id, :name, :birthday, :phone1, :phone2, :post_number, :address, :other
  json.url user_url(user, format: :json)
end
