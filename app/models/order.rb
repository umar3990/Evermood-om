class Order < ApplicationRecord
    enum status: {pending: 0, completed: 1}
    has_and_belongs_to_many :discounts
    has_many :line_items, dependent: :destroy
    validates :amount, presence: true
    before_create :set_order_number
    accepts_nested_attributes_for :line_items, allow_destroy: true, reject_if: ->(attrs) { attrs['pizza_id'].blank? || attrs['quantity'].blank?  || attrs['size'].blank? }

    private

    def set_order_number
        self.number = SecureRandom.hex(13)
    end
end
