class Property < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 30 }
    validates :rent,  presence: true, numericality: { greater_than: 0}
    validates :address,  presence: true, length: { maximum: 30 }
    validates :age,  presence: true, numericality: { greater_than_or_equal_to: 0}
end