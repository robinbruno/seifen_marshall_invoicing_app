class Invoice < ApplicationRecord
  belongs_to :client
  validate :invoice_date_is_valid

  PAYMENT_METHODS = ['Überweisung', 'Bar']

  validates :payment_method, inclusion: { in: PAYMENT_METHODS }

  private

  def invoice_date_is_valid
    errors.add(:invoice_date, "is not a valid date") unless invoice_date.is_a?(Date)
  end

end
