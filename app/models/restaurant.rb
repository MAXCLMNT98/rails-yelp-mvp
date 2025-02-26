class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion:  { in: CATEGORIES }
  validates :phone_number, format: { with: /\A0[1-9](?:[ .-]?[0-9]{2}){4}\z/ }
end
