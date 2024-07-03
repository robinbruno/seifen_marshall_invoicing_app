json.extract! fixed_expense, :id, :name, :net_amount, :vat, :gross_amount, :expense_type, :created_at, :updated_at
json.url fixed_expense_url(fixed_expense, format: :json)
