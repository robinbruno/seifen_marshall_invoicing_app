class Invoice < ApplicationRecord
  belongs_to :client

  PAYMENT_METHODS = ['Überweisung', 'Bar']

  validates :payment_method, inclusion: { in: PAYMENT_METHODS }
end
