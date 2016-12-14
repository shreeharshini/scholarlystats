json.extract! requestfordemo, :id, :username, :email, :library, :number, :message, :created_at, :updated_at
json.url requestfordemo_url(requestfordemo, format: :json)