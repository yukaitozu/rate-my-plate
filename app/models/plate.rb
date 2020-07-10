class Plate < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :rating, presence: true
end
