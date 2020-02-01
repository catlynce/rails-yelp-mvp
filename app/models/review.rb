class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }
  belongs_to :restaurant
end
