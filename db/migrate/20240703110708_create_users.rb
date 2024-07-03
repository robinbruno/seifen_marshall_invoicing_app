class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :business_name
      t.text :contact_details
      t.string :tax_number
      t.text :bank_information

      t.timestamps
    end
  end
end
