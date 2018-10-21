class Place < ApplicationRecord
  has_many :place_categories
  has_many :categories, through: :place_categories
  validates :title, presence: true
end
