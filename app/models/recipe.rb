class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
