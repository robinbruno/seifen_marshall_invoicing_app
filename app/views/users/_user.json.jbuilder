json.extract! user, :id, :name, :email, :business_name, :contact_details, :tax_number, :bank_information, :created_at, :updated_at
json.url user_url(user, format: :json)
