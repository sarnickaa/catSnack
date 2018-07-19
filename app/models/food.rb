class Food < ApplicationRecord
  belongs_to :pet, optional: true
end
