class Product < ApplicationRecord
  has_many :reviews

  validates :name, :description, :price_in_cents, presence: {message: "Please fill in the %{attribute}"}
  validates :price_in_cents, numericality: true

  def price_in_dollars
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end
  
end
