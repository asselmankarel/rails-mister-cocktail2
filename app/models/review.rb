class Review < ApplicationRecord
  belongs_to :cocktail
  validates :scrore, inclusion: { in: 0..5, allow_nil: false }
  validates :comment, presence: true, lenght: { minumum: 5 }
end
