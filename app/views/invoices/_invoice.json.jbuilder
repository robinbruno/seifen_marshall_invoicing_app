json.extract! invoice, :id, :client_id, :invoice_number, :amount, :payment_method, :invoice_date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
