class Dose < ApplicationRecord
  # validates :cocktail, presence: true, uniqueness: true
  # validates :ingredient, presence: true, uniqueness: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
