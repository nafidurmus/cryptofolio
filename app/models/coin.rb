class Coin < ApplicationRecord
  has_many :recorded_prices, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
