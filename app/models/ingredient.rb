class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, lenght: { minimum: 3 }
end
