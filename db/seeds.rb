# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Remove all previous loaded products
Product.destroy_all


Product.create(
  name: 'Star Wars',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
  price_in_cents: 299
)

Product.create(
  name: 'Lord of the Rings',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
  price_in_cents: 299
)

Product.create(
  name: 'Fast and Furious',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
  price_in_cents: 299
)

Product.create(
  name: 'Interstellar',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
  price_in_cents: 299
)
