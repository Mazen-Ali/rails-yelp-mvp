class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :restaurant_id, presence: true
  belongs_to :restaurant
end

# A review must have content and a rating. The rating should be a number between 0 and 5.

# A review must have a parent restaurant.
