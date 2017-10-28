class Product < ApplicationRecord
  validates :name, :description, :price_in_cents, presence: {message: "Please fill in the %{attribute}"}
  validates :price_in_cents, numericality: true
end
