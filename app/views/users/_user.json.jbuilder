json.extract! user, :id, :email, :first_name, :last_name, :sex, :birthdate, :address, :phone_number, :created_at, :updated_at
json.url user_url(user, format: :json)
