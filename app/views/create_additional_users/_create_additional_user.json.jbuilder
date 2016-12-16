json.extract! user, :id, :First_Name, :Last_Name, :Email, :Password, :Confirm_Password, :Select_Role, :created_at, :updated_at
json.url user_url(user, format: :json)