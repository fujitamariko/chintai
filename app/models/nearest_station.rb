class NearestStation < ApplicationRecord
    belongs_to :property, optional: true
    validates :line, length: { maximum: 30 }
end