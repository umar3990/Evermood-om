class IngredientsLineItem < ApplicationRecord
  enum type: {add: 0, remove: 1}
  belongs_to :line_item
  belongs_to :ingredient
end
