class FoodSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :main_ingredient, :secondary_ingredient, :score
  has_one :pet
end
