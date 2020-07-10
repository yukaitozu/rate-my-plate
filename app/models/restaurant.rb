class Restaurant < ApplicationRecord
  has_many :plates, dependent: :destroy

  validates :name, presence: true
  validates :rating, presence: true
end
