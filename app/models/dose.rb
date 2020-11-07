class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :quantity, presence: true, numerricality: true
  validates :unit, presence: true,
                   inclusion: { in: ['ml', 'cl', 'dl', 'gr', 'table spoon', 'coffee spoon', 'slice', 'piece'] }
end
