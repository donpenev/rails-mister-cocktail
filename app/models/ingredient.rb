class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true
  # before_destroy :allow_destroy

  # def allow_destroy
  #   ingredient.dose.empty?
  # end
end
