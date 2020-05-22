class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  # validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
