class Restaurant < ApplicationRecord
  has_many :plates, dependent: :destroy
end
