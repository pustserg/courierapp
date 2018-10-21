class Place < ApplicationRecord
  validates :title, presence: true
end
