class CreateInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :invoices do |t|
      t.references :client, null: false, foreign_key: true
      t.string :invoice_number
      t.decimal :amount
      t.string :payment_method
      t.date :invoice_date

      t.timestamps
    end
  end
end
