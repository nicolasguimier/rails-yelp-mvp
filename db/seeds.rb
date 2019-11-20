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
restaurants = [
  {
    name: 'Totum',
    address: 'Ile de Nantes, Nantes',
    phone_number: '06 50 45 12 14',
    category: 'french'
  },
  {
    name: "La tour d'Argent",
    address: 'Paris',
    phone_number: '',
    category: 'french'
  },
  {
    name: 'Les délices de Pekin',
    address: 'Langstross Grand Rue, Strasbourg',
    phone_number: '',
    category: 'chinese'
  },
  {
    name: 'les Cailloux',
    address: 'rue de la butte aux Cailles, Paris',
    phone_number: '+331 65 12 45 78',
    category: 'italian'
  },
  {
    name: 'Chez Léon',
    address: 'rue des Carmes, Nantes',
    phone_number: '02 45 78 41 44',
    category: 'belgium'
  },
  {
    name: 'Sushi Shop',
    address: 'Rue de Strasbourg, Nantes',
    phone_number: '',
    category: 'japanese'
  }
]

Restaurant.create!(restaurants)
puts 'Finished!'
