class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end

# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
# A restaurant must have at least a name, an address and a category.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
