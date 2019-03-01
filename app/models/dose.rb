class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id}
  # validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end


# class User < ActiveRecord::Base
#   belongs_to :company
#   has_and_belongs_to_many :roles
# end

# class Company < ActiveRecord::Base
#   has_many :users
# end

# class Role < ActiveRecord::Base
#   has_and_belongs_to_many :users
# end
