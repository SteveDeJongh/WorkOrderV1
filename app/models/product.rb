class Product < ApplicationRecord
  validates :name, :sku, :price, :cost, presence: true
  validates :upc, length: {minimum: 12, maximum: 12 }
end
