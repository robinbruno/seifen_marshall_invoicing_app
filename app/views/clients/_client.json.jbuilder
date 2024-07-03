json.extract! client, :id, :name, :contact_information, :payment_methods, :created_at, :updated_at
json.url client_url(client, format: :json)
