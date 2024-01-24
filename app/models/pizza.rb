class Pizza < ApplicationRecord
    SIZES = {small: 7, medium: 12, large: 17}
    validates :name, presence: true
    validates :base_price, presence: true
end
