class Event < ApplicationRecord
    has_many :members, dependent: :destroy
    has_many :payments, dependent: :destroy
end
