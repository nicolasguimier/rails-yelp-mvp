# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroy restaurants'
Restaurant.destroy_all

puts 'Create new restaurants'
resto1 = Restaurant.new(
  name: 'Totum',
  address: 'Ile de Nantes, Nantes',
  phone_number: '06 50 45 12 14',
  category: 'french'
)
resto1.save!

resto2 = Restaurant.new(
  name: "La tour d'Argent",
  address: 'Paris',
  phone_number: '',
  category: 'french'
)
resto2.save!

resto3 = Restaurant.new(
  name: 'Les délices de Pekin',
  address: 'Langstross Grand Rue, Strasbourg',
  phone_number: '',
  category: 'chinese'
)
resto3.save!

resto4 = Restaurant.new(
  name: 'les Cailloux',
  address: 'rue de la butte aux Cailles, Paris',
  phone_number: '+331 65 12 45 78',
  category: 'italian'
)
resto4.save!

resto5 = Restaurant.new(
  name: 'Chez Léon',
  address: 'rue des Carmes, Nantes',
  phone_number: '02 45 78 41 44',
  category: 'belgian'
)
resto5.save!

resto6 = Restaurant.new(
  name: 'Sushi Shop',
  address: 'Rue de Strasbourg, Nantes',
  phone_number: '',
  category: 'japanese'
)
resto6.save!

puts 'end of restaurants'

puts 'Destroy reviews'
Review.destroy_all

puts 'Create new reviews'
reviews = [
  {
    content: 'Really good',
    rating: 5,
    restaurant: resto1
  },
  {
    content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur amet vitae illo accusantium, illum deserunt recusandae id eveniet magni quidem facilis, iure similique ea eaque quis impedit in nihil ratione.',
    rating: 3,
    restaurant: resto1
  },
  {
    content: 'Optio, quidem, quas? Earum fugiat expedita eum reiciendis ipsum ratione, quam minima vitae. Atque.',
    rating: 4,
    restaurant: resto1
  },
  {
    content: 'I will never go again',
    rating: 1,
    restaurant: resto2
  },
  {
    content: 'Really good',
    rating: 5,
    restaurant: resto2
  },
  {
    content: 'Perfect',
    rating: 5,
    restaurant: resto3
  }
]
Review.create!(reviews)
puts 'end of reviews'

puts 'Finished!'
