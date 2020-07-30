class Restaurant < ApplicationRecord
  has_many :plates, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :rating, presence: true
end
