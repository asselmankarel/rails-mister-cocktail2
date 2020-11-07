class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  has_many :reviews
  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3 }
  has_one_attached :image
end
