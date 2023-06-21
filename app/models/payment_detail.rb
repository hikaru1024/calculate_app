class PaymentDetail < ApplicationRecord
  belongs_to :payment
  belongs_to :member
end
