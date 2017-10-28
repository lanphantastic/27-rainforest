class Product < ApplicationRecord
  validates :name, :description, :price_in_cents, presence: {message: "Please fill in the %{attribute}"}
  validates :price_in_cents, numericality: { message: "Please enter a integer"}
end
