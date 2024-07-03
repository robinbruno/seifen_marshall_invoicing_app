class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :contact_information
      t.text :payment_methods

      t.timestamps
    end
  end
end
