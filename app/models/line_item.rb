class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :pizza
  has_many :ingredients_line_items
  has_many :ingredients, through: :ingredients_line_items
  accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: ->(attrs) { attrs['ingredient_id'].blank? || attrs['type'].blank? }
end
