class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, allow_blank: false, numericality: { only_integer: true, in: 0..5 }
  validates :content, presence: true, allow_blank: false
end
