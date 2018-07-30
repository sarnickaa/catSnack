class Pet < ApplicationRecord
  belongs_to :user
  has_many :foods, dependent: :destroy
  validates :user, presence: true
end
