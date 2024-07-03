class CreateFixedExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :fixed_expenses do |t|
      t.string :name
      t.decimal :net_amount
      t.decimal :vat
      t.decimal :gross_amount
      t.string :expense_type

      t.timestamps
    end
  end
end
