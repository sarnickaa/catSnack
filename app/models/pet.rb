class Pet < ApplicationRecord
  belongs_to :user
  has_many :foods
  validates :user, presence: true
end
