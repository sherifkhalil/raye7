# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.create([{name: 'Axis'}, {name: 'Allies'}])

Place.create([
    {name: 'Maadi', longitude: 31.2769, latitude: 29.9627},
    {name: 'Zamalek', longitude: 31.2197, latitude: 30.0609},
    {name: 'Smart Village', longitude: 31.0178835, latitude: 30.073165},
    {name: 'New Cairo', longitude: 31.4685, latitude: 30.0342}
])
