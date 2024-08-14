class Review < ApplicationRecord
  belongs_to :restaurant

  RATIN = [0, 1, 2, 3, 4, 5]

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATIN }
  validates :rating, numericality: { only_integer: true }
end
