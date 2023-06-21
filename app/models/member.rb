class Member < ApplicationRecord
    has_many :payments, dependent: :destroy
    has_many :payment_details, dependent: :destroy
end
