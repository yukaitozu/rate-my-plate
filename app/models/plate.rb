class Plate < ApplicationRecord
  belongs_to :restaurant
  has_one_attached :photo

  validates :name, presence: true
  validates :rating, presence: true
end
